require File.dirname(__FILE__) + '/helper'

require 'rbconfig'

class Runner
  attr_accessor :ruby, :lib

  def initialize(config)
    @ruby = File.expand_path(File.join(config['bindir'], config['ruby_install_name']))
    @lib = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'exception_string.rb'))
  end

  def exec(code, *libs)
    libs.map! { |l| "-r#{l}" }
    %x(#{ruby} #{libs} -e "#{code}" 2>&1)
  end
end

describe "Exception#to_s_mri" do
  before do
    @code ||= "def foo; raise 'my crazy boom'; end; foo"
    @safe_code = "begin; #{@code}; rescue => e; abort(e.to_s_mri); end"
    @helper = Runner.new(Config::CONFIG)
  end

  should "have a format that appears the same as the native exception" do
    native = @helper.exec(@code)
    generated = @helper.exec(@safe_code, @helper.lib)
    generated.should.eql(native)
  end

  should "contain the backtrace" do
    output = @helper.exec(@safe_code, @helper.lib)
    output.should.match(/in `foo'/)
    output.should.match(/from -e\:1/)
    output.should.match(/my crazy boom/)
  end
end
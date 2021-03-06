# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{exception_string}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Tucker"]
  s.date = %q{2009-01-16}
  s.description = %q{Provides clean exception formatting as a string, which resembles native output formats for back-traces that kill the interpreter. Whilst there are shorter, simpler ways to format ruby exceptions, this format is almost as short, but provides the format that young ruby programmers will be familiar with, and can be used to keep logs and output data consistent with other areas of the platform.  At present the only provided format is that which is generated by MRI 1.8.x.}
  s.email = %q{raggi@rubyforge.org}
  s.extra_rdoc_files = ["History.txt", "README.rdoc"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "lib/exception_string.rb", "spec/.bacon", "spec/helper.rb", "spec/runner", "spec/spec_exception_string.rb", "tasks/autospec.rake", "tasks/bacon.rake", "tasks/bones.rake", "tasks/gem.rake", "tasks/git.rake", "tasks/manifest.rake", "tasks/notes.rake", "tasks/post_load.rake", "tasks/rdoc.rake", "tasks/rubyforge.rake", "tasks/setup.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/raggi/exception_string}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{libraggi}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Provides clean exception formatting as a string, which resembles native output formats for back-traces that kill the interpreter}
  s.test_files = ["spec/spec_exception_string.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<bones>, [">= 0"])
      s.add_development_dependency(%q<bacon>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<bones>, [">= 0"])
      s.add_dependency(%q<bacon>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<bones>, [">= 0"])
    s.add_dependency(%q<bacon>, [">= 0"])
  end
end

module ExceptionString

  Version = VERSION = '0.1.1'

  def self.version
    Version
  end
  
  # Formats exception data in a manner that appears the same as MRI outputs 
  # for uncaught exceptions.
  # e.g.
  #  boomtest.rb:18:in `go': boom (RuntimeError)
  #  	from boomtest.rb:34:in `foo'
  #  	from boomtest.rb:36
  def to_s_mri
    ["#{backtrace[0,1]}: #{message} (#{self.class.name})",
      backtrace[1..-1]
    ].flatten.join "\n\tfrom "
  end

end

class Exception
  include ExceptionString
end
# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

load 'tasks/setup.rb'

ensure_in_path 'lib'
require 'exception_string'

task :default => :test

PROJ.name = 'exception_string'
PROJ.authors = 'James Tucker'
PROJ.email = 'raggi@rubyforge.org'
PROJ.url = 'http://github.com/raggi/exception_string'
PROJ.rubyforge.name = 'raggi'
PROJ.version = ExceptionString.version

PROJ.exclude = %w(tmp$ bak$ ~$ CVS \.git \.hg \.svn ^pkg ^doc \.DS_Store
  \.cvs \.svn \.hgignore \.gitignore \.dotest \.swp$ ~$)

# EOF

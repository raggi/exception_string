desc "Run the executable test specifications"
task :spec do
  ruby 'spec/runner'
end

desc "Run the executable test specifications"
task :test => :spec
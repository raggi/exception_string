task :spec do
  ruby 'spec/runner'
end

task :test => :spec
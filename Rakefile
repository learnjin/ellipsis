require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rake/rdoctask'

Bundler::GemHelper.install_tasks

desc 'Run unit tests'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

desc 'Generate Documentation'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = 'Ellipsis'
  rdoc.options << '--line-numbers' << '--inline_source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end






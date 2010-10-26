require 'bundler'
Bundler.setup

require "rake"
require "rake/rdoctask"
require "rspec"
require "rspec/core/rake_task"

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

task :build do
  system "gem build mongoid-eager-loading.gemspec"
end

task :install => :build do
  system "sudo gem install mongoid-eager-loading-#{Mongoid::EagerLoading::VERSION}.gem"
end

task :release => :build do
  puts "Tagging #{Mongoid::EagerLoading::VERSION}..."
  system "git tag -a #{Mongoid::EagerLoading::VERSION} -m 'Tagging #{Mongoid::EagerLoading::VERSION}'"
  puts "Pushing to Github..."
  system "git push --tags"
  puts "Pushing to rubygems.org..."
  system "gem push mongoid-eager-loading-#{Mongoid::EagerLoading::VERSION}.gem"
end

Rspec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = "spec/**/*_spec.rb"
end

Rspec::Core::RakeTask.new('spec:progress') do |spec|
  spec.rspec_opts = %w(--format progress)
  spec.pattern = "spec/**/*_spec.rb"
end

Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = "rdoc"
  rdoc.title = "mongoid-eager-loading #{Mongoid::EagerLoading::VERSION}"
  rdoc.rdoc_files.include("README*")
  rdoc.rdoc_files.include("lib/**/*.rb")
end

task :default => :spec


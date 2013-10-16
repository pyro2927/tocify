$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'bundler/version'
require 'tocify/version'
require "bundler/gem_tasks"
 
task :build do
  system 'gem build tocify.gemspec'
end

task :install do
  system "gem install tocify-#{Tocify::VERSION}.gem"
end

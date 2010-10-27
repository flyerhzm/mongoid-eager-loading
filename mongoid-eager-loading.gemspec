# -*- encoding: utf-8 -*-
require File.expand_path("../lib/mongoid-eager-loading/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "mongoid-eager-loading"
  s.version     = Mongoid::EagerLoading::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Richard Huang"]
  s.email       = ["flyerhzm@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/mongoid-eager-loading"
  s.summary     = "eager loading for mongoid"
  s.description = "eager loading for mongoid"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "mongoid-eager-loading"

  s.add_dependency "mongoid", "~> 2.0.0.beta.19"

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rspec", "~> 2.0.0"
  s.add_development_dependency "mocha"
  s.add_development_dependency "watchr"
  s.add_development_dependency "bson_ext", "~> 1.1.1"
  s.add_development_dependency "mongo", "~> 1.1.1"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end

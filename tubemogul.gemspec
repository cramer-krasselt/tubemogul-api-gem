# -*- encoding: utf-8 -*-
require File.expand_path('../lib/tubemogul/version', __FILE__)

Gem::Specification.new do |s|
  s.add_development_dependency('rake', '~> 13.0.1')
  s.add_development_dependency('rspec', ['>= 3.7.0', '<= 3.9.0'])
  s.add_runtime_dependency('faraday', ['>= 0.9.0', '<= 1.0.1'])
  s.add_runtime_dependency('faraday_middleware', ['>= 0.9.0', '<= 1.0.0'])
  s.add_runtime_dependency('multi_json', ['>= 1.0.0', '<= 1.15.0'])
  s.add_runtime_dependency('hashie',  '~> 4.1.0')
  s.add_runtime_dependency('pry')
  s.add_runtime_dependency('pry-byebug')
  # Original author of Instagram Gem
  # s.authors = ["Shayne Sweeney"]
  s.authors = ["Mo Omer"]
  s.description = %q{A Ruby wrapper for the TubeMogul REST APIs}
  s.email = ['momer@c-k.com']
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.files = `git ls-files`.split("\n")
  s.name = 'tubemogul'
  s.platform = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.required_rubygems_version = Gem::Requirement.new('>= 1.3.6') if s.respond_to? :required_rubygems_version=
  s.rubyforge_project = s.name
  s.summary = %q{Ruby wrapper for the TubeMogul API}
  s.version = TubeMogulAPI::VERSION.dup
end

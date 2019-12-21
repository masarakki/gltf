# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gltf/version'

Gem::Specification.new do |spec|
  spec.name          = 'gltf'
  spec.version       = Gltf::VERSION
  spec.authors       = ['masarakki']
  spec.email         = ['masaki182@gmail.com']

  spec.summary       = 'glTF loader.'
  spec.description   = 'glTF loader.'
  spec.homepage      = 'https://github.com/masarakki/gltf'
  spec.license       = 'MIT'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-doc'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
  spec.add_dependency 'bindata'
  spec.add_dependency 'oj'
end

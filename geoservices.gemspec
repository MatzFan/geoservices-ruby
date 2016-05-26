# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geoservices/version'

Gem::Specification.new do |spec|
  spec.name          = 'geoservices'
  spec.version       = Geoservice::VERSION
  spec.authors       = ['Andrew Turner, Bruce Steedman']
  spec.email         = 'aturner@esri.com'

  spec.summary       = 'A simple wrapper for GeoServices API'
  spec.description   = 'A simple wrapper for ArcGIS REST (GeoServices) API'
  spec.homepage      = 'https://github.com/MatzFan/geoservices-ruby'
  spec.license       = 'APACHE'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end

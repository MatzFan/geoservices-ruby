Gem::Specification.new do |spec|
  spec.name = 'geoservices'
  spec.version = '0.0.13'

  spec.required_rubygems_version = Gem::Requirement.new('>= 0') if spec.respond_to? :required_rubygems_version=
  spec.authors = ['Andrew Turner']
  spec.autorequire = 'arcgis'
  spec.date = '2015-02-11'
  spec.email = 'aturner@esri.com'
  spec.files = ['LICENSE.txt', 'README.md', 'lib/geoservices.rb'] + Dir['lib/geoservices/**/*.rb']
  spec.require_paths = ['lib']
  spec.rubygems_version = spec.version
  spec.summary = 'A simple wrapper for GeoServices API'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end

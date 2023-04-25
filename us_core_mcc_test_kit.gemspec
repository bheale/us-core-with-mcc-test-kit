require_relative 'lib/us_core_test_kit/version'

Gem::Specification.new do |spec|
  spec.name          = 'us_core_mcc_test_kit'
  spec.version       = USCoreMCCTestKit::VERSION
  spec.authors       = ['Bret Heale', 'Stephen MacVicar' ]
  spec.email         = ['bheale@humanizedhealthconsulting.com']
  spec.summary       = 'US Core with MCC Inferno tests'
  spec.description   = 'US Core and MCC eCare IG Inferno tests'
  spec.homepage      = 'https://github.com/bheale/us-core-with-mcc-test-kit'
  spec.license       = 'Apache-2.0'
  spec.add_runtime_dependency 'inferno_core', '>= 0.4.2'
  spec.add_runtime_dependency 'tls_test_kit', '~> 0.2.0'
  spec.add_development_dependency 'database_cleaner-sequel', '~> 1.8'
  spec.add_development_dependency 'factory_bot', '~> 6.1'
  spec.add_development_dependency 'rspec', '~> 3.10'
  spec.add_development_dependency 'webmock', '~> 3.11'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.1.2')
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/bheale/us-core-with-mcc-test-kit'
  spec.files = [
    Dir['lib/**/*.rb'],
    Dir['lib/**/*.json'],
    Dir['lib/**/*.tgz'],
    Dir['lib/**/*.yml'],
    'LICENSE'
  ].flatten

  spec.require_paths = ['lib']
end

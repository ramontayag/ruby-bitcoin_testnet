# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bitcoin_cleaner/version'

Gem::Specification.new do |gem|
  gem.name          = "bitcoin_cleaner"
  gem.version       = BitcoinCleaner::VERSION
  gem.authors       = ["Ramon Tayag"]
  gem.email         = ["ramon.tayag@gmail.com"]
  gem.description   = %q{A gem of helpers for making integration tests with the Bitcoind a little easier.}
  gem.summary       = %q{A gem of helpers for making integration tests with the Bitcoind a little easier.}
  gem.homepage      = "https://github.com/ramontayag/ruby-bitcoin_cleaner"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'activesupport'
  gem.add_dependency 'wait', '~> 0.5.1'
  gem.add_development_dependency 'rspec', "~> 3.0"
  gem.add_development_dependency 'vcr'
end

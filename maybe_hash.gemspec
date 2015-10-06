# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maybe_hash/version'

Gem::Specification.new do |spec|
  spec.name          = "maybe_hash"
  spec.version       = MaybeHash::VERSION
  spec.authors       = ["Maurizio De Magnis"]
  spec.email         = ["root@olisti.co"]

  spec.summary       = %q{MaybeHash: only values or nil allowed.}
  spec.description   = %q{Wrap a hash-like object to ensure that when traversing the tree no exceptions are raised due to the presence of nil values.}
  spec.homepage      = "https://github.com/olistik/maybe_hash"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3"
  spec.add_development_dependency "actionpack", "~> 4.2"
end

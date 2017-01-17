# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/jest/version'

Gem::Specification.new do |spec|
    spec.name          = "guard-jest"
    spec.version       = Guard::Jest::VERSION
    spec.authors       = ["Nathan Stitt"]
    spec.email         = ["nathan@stitt.org"]

    spec.summary       = 'Guard plugin for auto-running Jest specs'
    spec.description   = 'Guard plugin for testing Javascript using the Jest test runner'
    spec.homepage      = "https://github.com/nathanstitt/guard-jest"
    spec.license       = "MIT"

    # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
    # to allow pushing to a single host or delete this section to allow pushing to any host.
    if spec.respond_to?(:metadata)
        spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
    else
        raise "RubyGems 2.0 or newer is required to protect against " \
              "public gem pushes."
    end

    spec.files         = `git ls-files -z`.split("\x0").reject do |f|
        f.match(%r{^(test|spec|features)/})
    end
    spec.bindir        = "exe"
    spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
    spec.require_paths = ["lib"]

    spec.add_dependency 'guard-compat',    '~> 1.2'
    spec.add_dependency 'concurrent-ruby', '~> 1.0.4'

    spec.add_development_dependency 'rake',        '~> 10.0'
    spec.add_development_dependency 'bundler',     '~> 1.13'
    spec.add_development_dependency 'rspec',       '~> 3.5'
    spec.add_development_dependency 'guard-rspec', '~> 4.7'
end
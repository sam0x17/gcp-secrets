
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gcp/secrets/version"

Gem::Specification.new do |spec|
  spec.name          = "gcp-secrets"
  spec.version       = Gcp::Secrets::VERSION
  spec.authors       = ["Sam Johnson"]
  spec.email         = ["sam@durosoft.com"]

  spec.summary       = "Securely load production-only secrets in Google Cloud Platform"
  spec.description   = "Securely manage and load production-only project metadata and secrets in Google Cloud Platform. Secrets are made available seamlessly as environment variables."
  spec.homepage      = "https://github.com/sam0x17/gcp-secrets"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end

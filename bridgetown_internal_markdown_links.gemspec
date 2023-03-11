# frozen_string_literal: true

require_relative "lib/bridgetown_internal_markdown_links/version"

Gem::Specification.new do |spec|
  spec.name          = "bridgetown_internal_markdown_links"
  spec.version       = BridgetownInternalMarkdownLinks::VERSION
  spec.author        = "Spinal Developers"
  spec.email         = "developers@spinalcms.com"
  spec.summary       = "Parse internal links in markdown files"
  spec.homepage      = "https://github.com/spinalcms/bridgetown-internal-markdown-links"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r!^(test|script|spec|features)/!) }
  spec.test_files    = spec.files.grep(%r!^test/!)
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.7.0"

  spec.add_dependency "bridgetown", ">= 1.2.0", "< 2.0"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", ">= 13.0"
  spec.add_development_dependency "rubocop-bridgetown", "~> 0.3"
end

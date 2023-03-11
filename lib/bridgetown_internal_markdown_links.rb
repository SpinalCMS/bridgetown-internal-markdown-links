# frozen_string_literal: true

require "bridgetown"
require "bridgetown_internal_markdown_links/builder"

Bridgetown.initializer :bridgetown_internal_markdown_links do |config|
  config.internal_markdown_links ||= {}
  config.internal_markdown_links.collections ||= []

  config.builder BridgetownInternalMarkdownLinks::Builder
end

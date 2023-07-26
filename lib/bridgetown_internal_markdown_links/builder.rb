# frozen_string_literal: true

module BridgetownInternalMarkdownLinks
  class Builder < Bridgetown::Builder
    MARKDOWN_LINK_REGEX = %r{\[([^\]]+)\]\(([^)]+)\)}.freeze

    def build
      parseable_collections.each do |collection|
        Bridgetown.logger.info "Bridgetown Internal Markdown Links:",
                               "Parsing links for #{collection}"

        hook collection, :pre_render do |resource|
          next if resource.data.internal_markdown_links == false

          parse_internal_links(resource)
        end
      end
    end

    private

    def parseable_collections
      config.internal_markdown_links.collections.map(&:to_sym)
    end

    def parse_internal_links(resource)
      resource.content.gsub!(MARKDOWN_LINK_REGEX) do
        match = Regexp.last_match
        label = match[1]
        link = match[2].split(" ").first

        if excluding?(link)
          "[#{label}](#{link})"
        else
          "[#{label}](#{Bridgetown::RubyTemplateView::Helpers.new(resource, site).url_for(link)})"
        end
      end
    end

    def excluding?(link)
      (link&.starts_with?("http") && !link&.include?(site.config.url)) ||
        link&.starts_with?("#") ||
        link&.starts_with?("mailto:") ||
        link&.ends_with?("jpg")
    end
  end
end

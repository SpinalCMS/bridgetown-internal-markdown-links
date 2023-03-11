# 🔗 Bridgetown Internal Markdown links

This plugin allows you to write paths in your markdown, like so:

`[Check out the docs](_pages/docs.erb)`.

Instead of the page's absolute url (ex. "/docs/"). If the slug is changed for that page, you don't have to go and do a find/replace throughout your site.

This plugin  uses Bridgetown's `url_for()` helper in the background.


## Installation

Run this command to add this plugin to your site's Gemfile:

```shell
bundle add bridgetown_internal_markdown_links
```

Then add the initializer to your configuration in `config/initializers.rb`:

```ruby
init :bridgetown_internal_markdown_links
```


## Usage

Link parsing is opt-in per collection.

### Configuration

Add the following in your `config/initializers.rb`:

```ruby
config.internal_markdown_links.collections = ["posts", "docs"]
```

Parsing of internal links is now happening for the collections “posts” and “docs”.


### Disable per file

Set `internal_markdown_links: false` in the frontmatter.


## Testing (TBD)

* Run `bundle exec rake test` to run the test suite
* Or run `script/cibuild` to validate with Rubocop and Minitest together.


## Sponsored By [Spinal](https://spinalcms.com/cms-for-bridgetown/)

<a href="https://spinalcms.com/cms-for-bridgetown/" target="_blank">
  <img src="https://user-images.githubusercontent.com/988051/183079316-af747ef2-42a9-47d8-9a0c-488ed4b6a689.jpg" alt="Spinal CMS logo" width="200"/>
</a>


## Contributing

1. Fork it (https://github.com/SpinalCMS/bridgetown-internal-markdown-links/fork)
2. Clone the fork using `git clone` to your local development machine.
3. Create your feature branch (`git checkout -b my-new-feature`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request

require 'redcarpet'
require 'github/markup'
AutoHtml.add_filter(:redcarpet).with(:renderer => Redcarpet::Render::HTML, :markdown_options => {}) do |text, options|
  # Redcarpet::Markdown.new(options[:renderer], options[:markdown_options]).render(text)
  GitHub::Markup.render('README.markdown', text)
end
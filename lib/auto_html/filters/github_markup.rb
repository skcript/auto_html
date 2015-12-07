require 'github/markup'
AutoHtml.add_filter(:github_markup) do |text, options|
  GitHub::Markup.render('README.markdown', text)
end
require 'github/markup'
AutoHtml.add_filter(:github_markup).with({}) do |text, options|
  GitHub::Markup.render('README.markdown', text)
end
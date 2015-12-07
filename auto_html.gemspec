Gem::Specification.new do |gem|
  gem.name = 'auto_html'
  gem.version = '1.6.4'

  gem.summary = "Transform URIs to appropriate markup"
  gem.description = "Automatically transforms URIs (via domain) and includes the destination resource (Vimeo, YouTube movie, image, ...) in your document"

  gem.authors  = ['Dejan Simic']
  gem.email    = 'desimic@gmail.com'
  gem.homepage = 'http://github.com/dejan/auto_html'

  gem.add_dependency('rinku', '~> 1.7')
  gem.add_dependency('redcarpet', '~> 3.1')
  gem.add_dependency('github-markup', '~> 1.4')

  gem.add_development_dependency('minitest', '~> 5.4')

  # ensure the gem is built out of versioned files
  gem.files = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*',
                  'README*', 'LICENSE'] & `git ls-files -z`.split("\0")
end


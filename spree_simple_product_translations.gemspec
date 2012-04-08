Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_simple_product_translations'
  s.version     = '0.1.0.beta1'
  s.summary     = 'Spree Extension that adds an intuitive way to translate product details in the backend'
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Jeroen Jacobs'
  s.email             = 'gems@jeroenj.be'
  s.homepage          = 'https://github.com/jeroenj/spree-simple_product_translations'

  s.files        = Dir['README.md', 'lib/**/*', 'app/**/*', 'public/**/*', 'vendor/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'
  
  s.add_dependency('spree_core', '>= 0.40.3')
  s.add_dependency('spree_product_translations', '~> 0.1.0.beta')
  s.add_dependency 'jquery-ui-rails', '~> 0.2.2'
end

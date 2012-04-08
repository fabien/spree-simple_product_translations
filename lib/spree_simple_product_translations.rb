require 'spree_core'
require 'spree_product_translations'

require 'batch_translation'

module SpreeSimpleProductTranslations
  class Engine < Rails::Engine

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate      
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end

      Spree::Product.class_eval do
        accepts_nested_attributes_for :translations
      end
      
      Spree::ProductProperty.class_eval do
        accepts_nested_attributes_for :translations, :reject_if => proc { |attributes| attributes['value'].blank? }
        validates_presence_of :value
      end
      
      Spree::Property.class_eval do
        accepts_nested_attributes_for :translations
      end
      
      Spree::Taxon.class_eval do
        accepts_nested_attributes_for :translations
      end

      Spree::OptionType.class_eval do
        accepts_nested_attributes_for :translations, :reject_if => proc { |attributes| attributes['presentation'].blank? }
        accepts_nested_attributes_for :option_values, :allow_destroy => true
      end

      Spree::OptionValue.class_eval do
        accepts_nested_attributes_for :translations, :reject_if => proc { |attributes| attributes['presentation'].blank? }
        validates_presence_of :name
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end

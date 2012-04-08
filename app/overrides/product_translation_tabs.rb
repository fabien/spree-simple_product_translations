Deface::Override.new(
  :virtual_path => "spree/admin/products/_form",
  :name => 'product_translation_tabs',
  :replace => "[data-hook='admin_product_form_left']",
  :partial => "spree/admin/products/product_form_left")
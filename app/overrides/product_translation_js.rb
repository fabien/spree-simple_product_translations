Deface::Override.new(
  :virtual_path => "spree/layouts/admin",
  :name => 'product_translation_js',
  :insert_bottom => "[data-hook='admin_inside_head']",
  :text => %Q[<%= javascript_include_tag 'jquery.livequery.js' %><%= javascript_include_tag 'jquery-ui-custom.js' %><%= stylesheet_link_tag 'jquery-ui-smoothness.css' %>
  <%= javascript_tag "$(function(){ $('.tabs').livequery(function() { $(this).tabs(); }); });" %>])
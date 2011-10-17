Deface::Override.new(:virtual_path => "admin/shared/_configuration_menu",
                     :name => "inquiries_configuration_sidebar_menu",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
                     :text => %[<li<%= ' class="active"' if controller.controller_name == 'inquiries' %>><%= link_to t("inquiries_settings"), admin_inquiries_settings_path %></li>])
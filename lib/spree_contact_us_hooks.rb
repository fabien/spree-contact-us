Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => "inquiries_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:inquiries) %>")

Deface::Override.new(:virtual_path => "admin/shared/_configuration_menu",
                     :name => "inquiries_configuration_sidebar_menu",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
                     :text => %[<li<%= ' class="active"' if controller.controller_name == 'inquiries' %>><%= link_to t("inquiries_settings"), admin_inquiries_settings_path %></li>])

Deface::Override.new(:virtual_path => "admin/configurations/index",
                     :name => "inquiries_configuration_menu",
                     :insert_after => "[data-hook='admin_configurations_menu']",
                     :text => %[
      <tr>
        <td><%= link_to t("inquiries_settings"), admin_inquiries_settings_path %></td>
        <td><%= t("inquiries_settings_description") %></td>
      </tr>
    ])
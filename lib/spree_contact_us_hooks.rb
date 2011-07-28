Deface::Override.new(:virtual_path => "layouts/admin",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:inquiries) %>")

Deface::Override.new(:virtual_path => "admin/shared/_configuration_menu",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu'], #admin_configurations_sidebar_menu[data-hook]",
                     :text => %[<li<%= ' class="active"' if controller.controller_name == 'inquiries' %>><%= link_to t("inquiries_settings"), admin_inquiries_settings_path %></li>])

Deface::Override.new(:virtual_path => "admin/configurations/index",
                     :insert_after => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
                     :text => %[
      <tr>
        <td><%= link_to t("inquiries_settings"), admin_inquiries_settings_path %></td>
        <td><%= t("inquiries_settings_description") %></td>
      </tr>
    ])
Deface::Override.new(:virtual_path => "admin/configurations/index",
                     :name => "inquiries_configuration_menu",
                     :insert_after => "[data-hook='admin_configurations_menu']",
                     :text => %[
      <tr>
        <td><%= link_to t("inquiries_settings"), admin_inquiries_settings_path %></td>
        <td><%= t("inquiries_settings_description") %></td>
      </tr>
    ])
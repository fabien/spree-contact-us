Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => "inquiries_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:inquiries) %>")

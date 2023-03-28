module Sections
    class Deliver < SitePrism::Section
        element :deliver_form, 'header a'       

        def form_deliver()           
            btn_deliver.click            
        end       
    end
end
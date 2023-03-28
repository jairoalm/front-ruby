module Sections
    class Home < SitePrism::Section
        element :header_home, '[alt="Buger Eats"]'
        element :text01, 'h1'
        element :text02, 'p'
        element :link, 'a'
        element :btn_deliver, 'main a'

        def deliver()           
            btn_deliver.click            
        end       
    end
end
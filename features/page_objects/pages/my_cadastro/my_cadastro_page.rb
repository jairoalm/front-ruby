require_relative '../../sections/my_cadastro/cadastro_sections'
module Pages
    class DeliverPage < SitePrism::Page
        set_url '/deliver'  
        section :cadastro_sections, Sections::Deliver, '#page-deliver'                
    end    
end
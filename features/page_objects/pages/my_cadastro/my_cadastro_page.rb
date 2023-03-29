require_relative '../../sections/my_cadastro/cadastro_sections'
module Pages
    class DeliverPage < SitePrism::Page
        set_url '/deliver'  
        element :message_success, '[class*=swal2-popup] .swal2-html-container'
        section :cadastro_sections, Sections::Deliver, '#page-deliver'                
    end    
end
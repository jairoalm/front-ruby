require_relative '../../sections/my_cadastro/form_deliver'
module Pages
    class DeliverPage < SitePrism::Page
        set_url '/deliver'  
        element :deliver_header, 'header a'
        element :message_success, '[class*=swal2-popup] .swal2-html-container'
        element :message_erro, '.alert-erro'
        section :form_deliver, Sections::FormDeliver, '#page-deliver form'                
    end    
end
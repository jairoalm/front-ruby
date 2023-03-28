require_relative '../../../support/factory/dynamic/dynamic'
module Sections
    class Deliver < SitePrism::Section
        element :deliver_form, 'header a'
        element :input_name, '[name="name"]'
        element :input_cpf, '[name="cpf"]'
        element :input_email, '[name="email"]'
        element :input_whatsapp, '[name="whatsapp"]'
        element :input_postalcode, '[name="postalcode"]'
        element :input_number, '[name="address-number"]'        

        element :btn_busca_cep, '[type="button"]'
        element :btn_metedo_entrega, '[alt="Moto"]'       
        element :btn_cadastrar, '[type="submit"]'       

        def form_deliver()           
            input_name.set "Teste"
            input_cpf.set "24568796321"
            input_email.set "teste@teste.com"
            input_whatsapp.set "89653254525"
            input_postalcode.set "58706362"
            btn_busca_cep.click
            input_number.set "152"
            btn_metedo_entrega.click           

            # input_name.set user[Factory::Dynamic.new_user.name]
            # input_password.set user['password']
            # btn_cadastrar.click            
        end       
    end
end
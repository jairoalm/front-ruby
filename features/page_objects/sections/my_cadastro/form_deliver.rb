# require_relative '../../../support/factory/dynamic/dynamic'
require 'faker'
module Sections
    class FormDeliver < SitePrism::Section
        element :deliver_form, 'header a'
        element :input_name, '[name="name"]'
        element :input_cpf, '[name="cpf"]'
        element :input_email, '[name="email"]'
        element :input_whatsapp, '[name="whatsapp"]'
        element :input_postalcode, '[name="postalcode"]'
        element :input_number, '[name="address-number"]'
        element :input_complemento, '[name="address-details"]'
        element :btn_busca_cep, '[type="button"]'
        element :btn_metedo_entrega, '[alt="Moto"]'    
        element :upload_file, '.dropzone'         
        element :btn_cadastrar, '[type="submit"]'  
        element :message_success, '[class*=swal2-popup] .swal2-html-container'        

        def form_deliver_static(entregador)                  
            input_name.set entregador['nome']
            input_cpf.set entregador['cpf']
            input_email.set entregador['email']
            input_whatsapp.set entregador['whatsapp']
            input_postalcode.set entregador['postalcode']
            btn_busca_cep.click
            input_number.set entregador['number']
            input_complemento.set entregador['address']
            btn_metedo_entrega.click
            # Então você pode usar a make_visible opção que tornará temporariamente a entrada do arquivo visível, anexará um arquivo a ele e o ocultará novamente.
            # Se o CSS padrão aplicado por make_visiblesua página não funcionar para tornar a entrada visível, você pode definir hash de valores CSS para usar em vez detrue
            upload_file.attach_file('upload/cnh.jpg', make_visible: true)        
            # btn_cadastrar.click            
        end       
        def form_deliver_dynamic           
            input_name.set Faker::Name.name
            input_cpf.set Faker::CPF.number
            input_email.set Faker::Internet.email(domain: 'bugereats')
            input_whatsapp.set Faker::Base.numerify('839########')
            input_postalcode.set Faker::Address.postcode           
            btn_busca_cep.click            
            # sleep 20
            input_number.set Faker::Number.number            
            input_complemento.set Faker::Address.secondary_address
            btn_metedo_entrega.click
            upload_file.attach_file('upload/cnh.jpg', make_visible: true)                      
        end 
        def preencher_form_com_dados_informados(nome, cpf, email, cep, numero)
            input_name.set nome
            input_cpf.set cpf
            input_email.set email
            input_postalcode.set cep
            # btn_busca_cep.click
            input_number.set numero
            # if tipo_de_conta == 'pf'
            #   rd_cpf.set true
            # elsif tipo_de_conta == 'pj'
            #   rd_cnpj.set true
            # end            
          end     
        def confirmar_cadastro()
            btn_cadastrar.click 
        end 
    end
end
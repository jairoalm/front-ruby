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
            user_data = Factory::Dynamic.new_user
  
            input_name.set user_data[:name]   
            input_cpf.set user_data[:cpf] 
            input_email.set user_data[:email]
            input_whatsapp.set user_data[:whatsapp]
            input_postalcode.set user_data[:postalcode]
            btn_busca_cep.click
            input_number.set user_data[:number]
            input_complemento.set user_data[:address]
            btn_metedo_entrega.click
            upload_file.attach_file('upload/cnh.jpg', make_visible: true)                                 
        end 
        # Preenche o cadastro com dados informados no esquema de cenário em cadastro_invalido_specs.feature
        def preencher_form_com_dados_informados_esquema_de_cenario(nome, cpf, email, cep, numero)
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
        def preencher_form_com_dados_da_planilha_excel
            # Abre o arquivo Excel                
            workbook = Roo::Excelx.new('upload/entregador.xlsx') # Busca o arquivo excel dentro da pasta
            worksheet = workbook.sheet(0) # seleciona a primeira planilha do arquivo    
            data = []
    
            worksheet.each_row_streaming(offset: 1) do |row| # pula a primeira linha que geralmente contém o cabeçalho
                data << {
                    nome: row[0],
                    cpf: row[1],
                    email: row[2],
                    whatsapp: row[3],
                    postalcode: row[4],
                    number: row[5],
                    address: row[6],
                }
            end
            
            for i in 0...data.length do
                row = data[i]                           
            # data.each do |row|          
                input_name.set row[:nome]   
                input_cpf.set row[:cpf]
                input_email.set row[:email]
                input_whatsapp.set row[:whatsapp]
                input_postalcode.set row[:postalcode]
                btn_busca_cep.click
                input_number.set row[:number]
                input_complemento.set row[:address]
                btn_metedo_entrega.click
                upload_file.attach_file('upload/cnh.jpg', make_visible: true)                                
            end                 
        end 
        def confirmar_cadastro()
            btn_cadastrar.click 
        end          
                    
    end
end
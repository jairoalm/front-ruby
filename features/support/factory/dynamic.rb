require 'faker'
module Factory
    class Dynamic
        def self.new_user
            {
                name: Faker::Name.name, 
                cpf: Faker::CPF.number,
                email: Faker::Internet.email,
                whatsapp: Faker::Base.numerify('839########'),
                postalcode: Faker::Address.zip_code('#####-####'),
                number: Faker::Number.number(3),
                address: Faker::Address.secondary_address
            }
        end
        def self.get_dynamic_data(data)
            # binding.pry
            Dynamic.load_file[data]
        end
    end    
end
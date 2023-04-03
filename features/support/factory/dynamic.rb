require 'faker'
module Factory
    class Dynamic
        def self.new_user
            {
                name: Faker::Name.name, 
                cpf: Faker::CPF.number,
                email: Faker::Internet.email(domain: 'bugereats'),
                whatsapp: Faker::Base.numerify('839########'),
                postalcode: Faker::Address.postcode,
                number: Faker::Number.number,
                address: Faker::Address.secondary_address
            }
        end
    end    
end
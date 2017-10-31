FactoryGirl.define do
  factory :user do
    first_name 'Nome'
    last_name 'Sobrenome'
    city 'Guarapuava'
    address 'Avenida Professora Laura Pacheco Bastos, 800 - Bairro Industrial CEP 85053-525'
    cpf '15099044255'
    sequence :email do
      |n| "user#{n}@online.auction.br"
    end
    password 'password'
    password_confirmation 'password'
  end
end

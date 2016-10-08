require "reform/form/validation/unique_validator.rb"

Module User::Contract
  class Base < Reform::form
    model User
    property :email
    property :password, virtual: true

    validates :email, email: true, unique: true
    validates :password, lenght: {minimum: 8 }
  end

  class Create < Base
    validates :email, presence: true
    validates :password, presence: true
  end

  class Update < Base

  end
end

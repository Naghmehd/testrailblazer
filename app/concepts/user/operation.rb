require "bcrypt"

class User < ActiveRecord::Base
  class Create < Trailblazer::Operation
    include Model; model User, :Create

    contract User::Contract::Create

    def process(params)
      validate(params[:user]) do |f|
        generate_digest
        f.save
      end
    end

    def generate_digest
      model.password_digest = BCrypt::Password.create(contract.password)
    end
end

class User < ActiveRecord::Base
  class Create < Trailblazer::Operation
    include Model; model User, :Create

    contract do
      property :email
      property :password, virtual: true

      validates :email, presence: true, email: true, unique: true
      validates :password, presence: true
    end 
  end
end

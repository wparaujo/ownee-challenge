class User < ApplicationRecord
    has_secure_password
    validates :password, length: { minimum: 6 }, on: :create

    has_many :orders
    has_many :movies, through: :orders
end

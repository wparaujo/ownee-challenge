class Movie < ApplicationRecord
    belongs_to :genre

    has_many :orders
    has_many :users, through: :order

    accepts_nested_attributes_for :genre
end

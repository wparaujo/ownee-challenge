class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :price

  belongs_to :genre
end

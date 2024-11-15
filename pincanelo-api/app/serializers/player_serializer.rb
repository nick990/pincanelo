class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :elo_rating
end

class PlayerCompleteSerializer < ActiveModel::Serializer
  attributes  :id, :name, :elo_rating, :created_at, :updated_at
end

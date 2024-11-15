class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :elo_rating
  # attribute :pretty_name , if: ->{object.id==1} do
  #   "Player #{object.name}"
  # end
end

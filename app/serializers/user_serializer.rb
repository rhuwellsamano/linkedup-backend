class UserSerializer < ActiveModel::Serializer
  attributes :username, :avatar, :bio, :online, :id, :likes
end

class TwigSerializer < ActiveModel::Serializer
  attributes :id, :name, :flex, :shoots, :pattern
  has_one :user
  def editable
    scope == object.user
  end
end

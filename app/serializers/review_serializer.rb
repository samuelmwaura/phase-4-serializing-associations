class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :author, :date,:url
end

#This is the review serializer that indicates exactly what information is to be sent in the controllers for review.
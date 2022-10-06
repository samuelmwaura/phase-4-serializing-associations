class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :year, :length, :description, :poster_url, :category, :discount
  belongs_to :director #This a relationship macro that tells this serializer to include the information about the related director for a given movie
  has_many :reviews #Will in  dicate that the movie information includes its review. The information about the review is fetched at the serializer level.
end

#The assocaited model will use the its own serializer to determine how much data is sent or the exact attributes that are included in the response.

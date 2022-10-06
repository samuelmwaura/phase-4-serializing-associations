class DirectorMovieSerializer < ActiveModel::Serializer
    attributes :title, :year
  #The is an association serializer specifically for displaying movies assocciated to a director.For displaying movies outside of the association with the Director context, The movie serializer is used.
    has_many :reviews  #We have to add this here since this is a custom serializer to render movies related to our director.We want those movies to come with their reviews
end


#Active records turns out to be a tool for crafting the JSON that is return from our application
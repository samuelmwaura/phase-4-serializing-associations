class DirectorSerializer < ActiveModel::Serializer
  attributes :id, :name,:birthplace,:female_director
  has_many :movies, serializer: DirectorMovieSerializer #Produces a director who has the related movies in an array.A directors information comes with their related movies.However the movies wont come with their reviews since Active MOdel Serializer only limits nesting to just one le vel to avoid complex JSON.
  #The reason for including the serializer bit is to explicitly tell the app that where we need to fetch directors infor, we need to just pass the attributes included in the specific serializer.For other times, use what is spelt out in the movie serializer.

  #This would be the same for has_many :through relationship such that each of the models in a many to many relationship are  bear the macro in their serializers
  #The has_many can take a serializer option for the :movies that directs to another serializer that contains the instructions for the exact attributes to be included in the render
end
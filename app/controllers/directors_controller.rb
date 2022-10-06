class DirectorsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def index
    directors = Director.all
    render json: directors, include: ['movies','movies.reviews']
    #include: ['movies','movies.reviews']  doesn't repeat the work of the serializer but instead enables a deeper level of nesting where a director information comes with their movies and the movie comes with its reviews 
    #This helps overide the limitation of Active Model serializer to one level of nesting.
  end

  def show
    director = Director.find(params[:id])
    render json: director,include: ['movies','movies.reviews']
  end

  private

  def render_not_found_response
    render json: { error: "Director not found" }, status: :not_found
  end

end

class MoviesController < ApplicationController
  def index
    if params[:query].present?
      # @movies = Movie.where(title: params[:query])

      # LIKE (or ILIKE)
      # dog

      # returns: dogs, Dogville

      # @@
      # jump

      # returns associated words: jumped, jumping etc

      # sql_query = " \
      #         movies.title @@ :query \
      #         OR movies.syllabus @@ :query \
      #         OR directors.first_name @@ :query \
      #         OR directors.last_name @@ :query \
      #       "
      # @movies = Movie.where("title @@ :query OR syllabus @@ :query", query: "%#{params[:query]}%")
      # @movies = Movie.joins(:director).where(sql_query, query: "%#{params[:query]}%")
      @movies = Movie.search(params[:query])
    else
      @movies = Movie.all
    end
  end
end

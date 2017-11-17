class SearchesController < ApplicationController
  def search
  end

  def results
    @query = params[:search][:query]
    url = "https://api.unsplash.com/search/photos/?page=1&per_page=23&query=#{@query}&client_id=#{ENV["client_id"]}"
    results = HTTParty.get(url)
    parsed_results = JSON.parse(results.body)
    @results = parsed_results["results"].map do |result|
      {
        # description: result["description"],
        image: result["urls"]["small"] 
      }
    end
  end

  def create
    # @post = Post.find[:post_id]
    post_id = params[:post_id]
    @search = Search.new(search_params)
    if @search.save
      redirect_to post_path
    else
      render root_path
    end
  end

  def index
    @searches = Search.all
  end

  private

  def search_params
    params.require(:searches).permit(:description, :image)
  end
end
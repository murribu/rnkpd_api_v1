class V1::PodcastsController < V1::V1Controller

  before_action :set_podcast, only: [:show, :edit, :update]
  
  def index
    render :json => Podcast.all
  end
  
  def show
    render :json => @podcast
  end
  
  private
    def set_podcast
      @podcast = Podcast.find(params[:id])
    end
end
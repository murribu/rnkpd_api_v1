class V1::PodcastsController < V1::V1Controller
  def index
    render :json => Podcast.all
  end
end
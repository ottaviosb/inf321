defmodule RumblWeb.VideoController do
  use RumblWeb, :controller

  alias Rumbl.Multimedia

  def index(conn, _params) do
    videos = Multimedia.list_videos()
    render(conn, :index, videos: videos)
  end

  # Pattern matching no 2º argumento: extrai o "id" que veio da URL (/videos/:id).
  def show(conn, %{"id" => id}) do
    video = Multimedia.get_video(id)
    render(conn, :show, video: video)
  end
end

# lib/rumbl/multimedia.ex
defmodule Rumbl.Multimedia do
  @moduledoc """
  The Multimedia context.
  """

  alias Rumbl.Multimedia.Video

  # Dados estáticos em memória (ainda sem banco de dados), como em Rumbl.Accounts.
  def list_videos do
    [
      %Video{
        id: "1",
        title: "Elixir Conf Keynote",
        url: "https://www.youtube.com/watch?v=9RB1JCKe3GY"
      },
      %Video{
        id: "2",
        title: "Phoenix 1.8 Features",
        url: "https://www.youtube.com/watch?v=ojL_VHc4gLk"
      }
    ]
  end

  # Enum.find/2 devolve o primeiro vídeo com o id pedido, ou nil se nenhum combinar.
  def get_video(id) do
    Enum.find(list_videos(), fn video -> video.id == id end)
  end
end

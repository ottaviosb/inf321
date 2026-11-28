defmodule RumblWeb.VideoHTML do
  use RumblWeb, :html

  # Incorpora os templates de lib/rumbl_web/controllers/video_html/ (index e show).
  embed_templates "video_html/*"
end

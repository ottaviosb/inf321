defmodule HelloWeb.HelloHTML do
  use HelloWeb, :html

  embed_templates "hello_html/*"

  # Função auxiliar de apresentação, chamada no template saudacao.html.heex
  def format_name(name) do
    String.capitalize(name)
  end
end

defmodule HelloWeb.HelloController do
  use HelloWeb, :controller

  # Pattern matching no cabeçalho de cada cláusula: o valor de "lang"
  # escolhe a cláusula e o valor de "name" vai para a variável nome.
  def saudacao(conn, %{"lang" => "pt", "name" => nome}) do
    render(conn, :saudacao, cumprimento: "Olá", name: nome)
  end

  def saudacao(conn, %{"lang" => "en", "name" => nome}) do
    render(conn, :saudacao, cumprimento: "Hello", name: nome)
  end
end

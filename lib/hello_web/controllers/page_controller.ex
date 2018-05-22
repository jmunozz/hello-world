defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    IO.puts "ici"
    render conn, "index.html"
  end
end

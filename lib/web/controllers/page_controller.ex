defmodule Web.PageController do
  use Web, :controller

  alias Grapevine.Games

  def index(conn, _params) do
    games = Games.public(filter: %{"online" => "yes", "cover" => "yes"})

    conn
    |> assign(:games, games)
    |> render("index.html")
  end

  def conduct(conn, _params) do
    render(conn, "conduct.html")
  end

  def docs(conn, _params) do
    render(conn, "docs.html")
  end

  def media(conn, _params) do
    render(conn, "media.html")
  end

  def colors(conn, _params) do
    render(conn, "colors.html")
  end
end

defmodule Web.PageView do
  use Web, :view

  import Web.SocketHelper

  alias Grapevine.Channels
  alias Web.DocView
  alias Web.GameView

  def render("_conduct.html", _assigns) do
    :grapevine
    |> :code.priv_dir()
    |> Path.join("pages/CODE_OF_CONDUCT.md")
    |> File.read!()
    |> Earmark.as_html!()
    |> raw()
  end
end

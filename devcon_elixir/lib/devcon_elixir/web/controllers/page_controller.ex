defmodule DevconElixir.Web.PageController do
  use DevconElixir.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

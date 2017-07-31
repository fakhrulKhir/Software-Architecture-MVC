defmodule DevconElixir.Web.UserController do
  use DevconElixir.Web, :controller

  alias DevconElixir.{Repo, User}

  def index(conn, _params) do
    users = Repo.all(User)

    render(conn, "index.html", %{users: users})
  end

  def show(conn, %{"id" => user_id}) do
    user = Repo.get_by(User, id: user_id)

    render(conn, "show.html", %{user: user})
  end
end
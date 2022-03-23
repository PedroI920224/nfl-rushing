defmodule RushingAppWeb.PageController do
  use RushingAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

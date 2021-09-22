defmodule CoffeeCompanionWeb.PageController do
  use CoffeeCompanionWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

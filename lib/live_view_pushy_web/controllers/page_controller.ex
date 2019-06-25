defmodule LiveViewPushyWeb.PageController do
  use LiveViewPushyWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

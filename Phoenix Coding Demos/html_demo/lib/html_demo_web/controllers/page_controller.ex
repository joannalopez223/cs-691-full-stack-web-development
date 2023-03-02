defmodule HtmlDemoWeb.PageController do
  use HtmlDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

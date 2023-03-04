defmodule HtmlDemoWeb.ListController do
  use HtmlDemoWeb, :controller

  def index(conn, _param) do
    render(conn, :index, today: Date.utc_today())
  end

  def test(conn, _params) do
    render(conn, :test, name: "Tim")
  end
end

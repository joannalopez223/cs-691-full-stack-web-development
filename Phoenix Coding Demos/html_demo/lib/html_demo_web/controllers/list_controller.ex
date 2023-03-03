defmodule HtmlDemoWeb.ListController do
  use HtmlDemoWeb, :controller

  def index(conn, _param) do
    render(conn, :index)
  end
end

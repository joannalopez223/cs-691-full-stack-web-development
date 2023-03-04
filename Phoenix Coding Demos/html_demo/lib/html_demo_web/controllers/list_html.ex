defmodule HtmlDemoWeb.ListHTML do
  use HtmlDemoWeb, :html

  def test(assigns) do
    ~H"""
    <h1>I received the value <%=assigns.name%> </h1>
    """
  end
  embed_templates "list_html/*"
end

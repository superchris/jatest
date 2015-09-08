defmodule Jatest.PageController do
  use Jatest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

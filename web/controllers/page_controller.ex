defmodule BugDemo.PageController do
  use BugDemo.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

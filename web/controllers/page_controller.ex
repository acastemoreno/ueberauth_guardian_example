defmodule UeberauthGuardianExample.PageController do
  use UeberauthGuardianExample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

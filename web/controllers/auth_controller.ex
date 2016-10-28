defmodule UeberauthGuardianExample.AuthController do
  use UeberauthGuardianExample.Web, :controller
  plug Ueberauth
  alias Ueberauth.Strategy.Helpers

  def request(conn, _params) do
    text conn, "Holi, no debo aparecer"
  end

  def callback(%{assigns: %{ueberauth_failure: _fails}} = conn, _params) do
    text conn, "Holi, fallo en autentificacion"
  end

  def callback(%{assigns: %{ueberauth_auth: auth}} = conn, _params) do
    IO.inspect auth
    IO.inspect Helpers.callback_url(conn)
    text conn, "Holi, me autentique"
  end
end

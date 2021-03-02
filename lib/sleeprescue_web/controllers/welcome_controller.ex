defmodule SleeprescueWeb.WelcomeController do
  use SleeprescueWeb, :controller

  @moduledoc """
  Welcome/signup page. Authenticated users will be
  redirected to the sleep stats page.
  """

  def index(conn, _params) do
    render conn, "index.html"
  end

end

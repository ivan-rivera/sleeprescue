defmodule SleeprescueWeb.AboutController do
  use SleeprescueWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
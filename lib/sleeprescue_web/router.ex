defmodule SleeprescueWeb.Router do
  use SleeprescueWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {SleeprescueWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SleeprescueWeb do
    pipe_through :browser

    get "/", WelcomeController, :index

  end

  # Other scopes may use custom stacks.
  # scope "/api", SleeprescueWeb do
  #   pipe_through :api
  # end
end

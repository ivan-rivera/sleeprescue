use Mix.Config

config :sleeprescue,
  ecto_repos: [Sleeprescue.Repo]

# Configures the endpoint
config :sleeprescue, SleeprescueWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: (System.get_env("SECRET_KEY_BASE_SR") || raise "secret key base is missing"),
  render_errors: [view: SleeprescueWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Sleeprescue.PubSub,
  live_view: [signing_salt: (System.get_env("LIVE_VIEW_SALT_SR") || raise "LV secret is missing")]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{Mix.env()}.exs"

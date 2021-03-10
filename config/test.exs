use Mix.Config

# Only in tests, remove the complexity from the password hashing algorithm
config :bcrypt_elixir, :log_rounds, 1

config :sleeprescue, Sleeprescue.Repo,
  username: "postgres",
  password: "postgres",
  database: "sleeprescue_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :sleeprescue, SleeprescueWeb.Endpoint,
  http: [port: 4002],
  server: false

config :logger, level: :warn

defmodule Sleeprescue.Repo do
  use Ecto.Repo,
    otp_app: :sleeprescue,
    adapter: Ecto.Adapters.Postgres
end

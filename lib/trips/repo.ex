defmodule Trips.Repo do
  use Ecto.Repo,
    otp_app: :trips,
    adapter: Ecto.Adapters.Postgres
end

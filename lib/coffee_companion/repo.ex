defmodule CoffeeCompanion.Repo do
  use Ecto.Repo,
    otp_app: :coffee_companion,
    adapter: Ecto.Adapters.Postgres
end

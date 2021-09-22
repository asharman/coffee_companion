defmodule CoffeeCompanion.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      CoffeeCompanion.Repo,
      # Start the Telemetry supervisor
      CoffeeCompanionWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: CoffeeCompanion.PubSub},
      # Start the Endpoint (http/https)
      CoffeeCompanionWeb.Endpoint
      # Start a worker by calling: CoffeeCompanion.Worker.start_link(arg)
      # {CoffeeCompanion.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CoffeeCompanion.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    CoffeeCompanionWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

defmodule EctoWorksheet.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      EctoWorksheetWeb.Telemetry,
      # Start the Ecto repository
      EctoWorksheet.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: EctoWorksheet.PubSub},
      # Start Finch
      {Finch, name: EctoWorksheet.Finch},
      # Start the Endpoint (http/https)
      EctoWorksheetWeb.Endpoint
      # Start a worker by calling: EctoWorksheet.Worker.start_link(arg)
      # {EctoWorksheet.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: EctoWorksheet.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    EctoWorksheetWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

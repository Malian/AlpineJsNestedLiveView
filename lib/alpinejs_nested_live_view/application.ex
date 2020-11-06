defmodule AlpinejsNestedLiveView.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      AlpinejsNestedLiveViewWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: AlpinejsNestedLiveView.PubSub},
      # Start the Endpoint (http/https)
      AlpinejsNestedLiveViewWeb.Endpoint
      # Start a worker by calling: AlpinejsNestedLiveView.Worker.start_link(arg)
      # {AlpinejsNestedLiveView.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: AlpinejsNestedLiveView.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    AlpinejsNestedLiveViewWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end

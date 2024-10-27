defmodule FirstApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc """
  This module provides functionalities for building RESTful APIs.
  """

  use Application

  @impl true
  @doc """
  Starts the API server.

  ## Examples

      iex> FirstApi.start()
      :ok
  """
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: FirstApi.Worker.start_link(arg)
      # {FirstApi.Worker, arg}
      {Plug.Cowboy, scheme: :http, plug: FirstApi.Router , options: [port: 8080]}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: FirstApi.Supervisor]
    Supervisor.start_link(children, opts)
  end
end

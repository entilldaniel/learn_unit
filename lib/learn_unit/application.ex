defmodule LearnUnit.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false
alias LearnUnit.TaskServer

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Starts a worker by calling: LearnUnit.Worker.start_link(arg)
      # {LearnUnit.Worker, arg}
      TaskServer
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: LearnUnit.Supervisor]
    Supervisor.start_link(children, opts)
  end
end

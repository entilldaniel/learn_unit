defmodule LearnUnit.TaskServer do
  use GenServer

  def init(_) do
    {:ok, []}
  end

  def start_link(opts) do
    GenServer.start_link(__MODULE__, :ok, opts)
  end


  def handle_cast("say", state) do
	{:noreply, state}
  end

  
end

defmodule LearnUnit.TaskServer do
  use GenServer

  alias LearnUnit.Todo.Item

  @type t :: %__MODULE__{
          items: [Item.t()]
        }
  defstruct ~w(items)a

  def init(params) do
    IO.inspect(params)
    {:ok, %__MODULE__{items: []}}
  end

  def start_link(opts) do
    GenServer.start_link(__MODULE__, :ok, opts)
  end

  def handle_cast("say", state) do
    {:noreply, state}
  end

  def handle_call(:test, _from, state) do
    {:reply, "Hello", state}
  end
end

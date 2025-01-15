defmodule LearnUnit.Todo.Item do
  @type t :: %LearnUnit.Todo.Item{
          title: String.t(),
          body: String.t(),
          created: DateTime.t(),
          done: DateTime.t()
        }
  @enforce_keys [:title, :body, :created]
  defstruct ~w(title body created done)a
end

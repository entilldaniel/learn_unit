defmodule LearnUnitTest do
  use ExUnit.Case
  doctest LearnUnit

  test "greets the world" do
    assert LearnUnit.hello() == :world
  end
end

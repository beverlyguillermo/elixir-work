defmodule CocoWorkersTest do
  use ExUnit.Case
  doctest CocoWorkers

  test "greets the world" do
    assert CocoWorkers.hello() == :world
  end
end

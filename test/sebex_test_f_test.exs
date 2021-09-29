defmodule SebexTestFTest do
  use ExUnit.Case
  doctest SebexTestF

  test "greets the world" do
    assert SebexTestF.hello() == :world
  end
end

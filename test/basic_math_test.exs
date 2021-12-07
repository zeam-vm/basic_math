defmodule BasicMathTest do
  use ExUnit.Case
  doctest BasicMath

  test "greets the world" do
    assert BasicMath.hello() == :world
  end
end

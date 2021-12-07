defmodule BasicMath.Factorial.FactorialEtsTest do
  use ExUnit.Case
  doctest BasicMath.Factorial.FactorialEts

  test "compare to FactorialBasic" do
    Enum.each(1..20, fn n ->
      assert BasicMath.Factorial.FactorialBasic.factorial(n) == BasicMath.Factorial.FactorialEts.factorial(n)
    end)
  end
end

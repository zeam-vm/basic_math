defmodule BasicMath.Factorial.FactorialBasic do
  @moduledoc """
  This provides the `factorial/1` function in the basic recursive style.
  """

  @doc """
    Calculate the factorial of `n`.

  ## Examples

      iex> BasicMath.Factorial.FactorialBasic.factorial(0)
      1

      iex> BasicMath.Factorial.FactorialBasic.factorial(1)
      1

      iex> BasicMath.Factorial.FactorialBasic.factorial(2)
      2

      iex> BasicMath.Factorial.FactorialBasic.factorial(3)
      6

      iex> BasicMath.Factorial.FactorialBasic.factorial(4)
      24
  """
  @spec factorial(non_neg_integer) :: pos_integer
  def factorial(0), do: 1

  def factorial(n) when is_integer(n) and n > 0 do
    n * factorial(n - 1)
  end

  def factorial(n), do: raise(ArithmeticError, "bad argument in factorial(#{n})")
end

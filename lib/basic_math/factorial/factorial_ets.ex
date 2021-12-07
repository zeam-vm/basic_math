defmodule BasicMath.Factorial.FactorialEts do
  @moduledoc """
  This provides the `factorial/1` function in the style cached by ETS.
  """

  @doc false
  @spec init :: atom | :ets.tid()
  def init() do
    :ets.new(:factorial_ets, [:set, :public, :named_table])
  end

  @doc """
    Calculate the factorial of `n`.

  ## Examples

      iex> BasicMath.Factorial.FactorialEts.factorial(0)
      1

      iex> BasicMath.Factorial.FactorialEts.factorial(1)
      1

      iex> BasicMath.Factorial.FactorialEts.factorial(2)
      2

      iex> BasicMath.Factorial.FactorialEts.factorial(3)
      6

      iex> BasicMath.Factorial.FactorialEts.factorial(4)
      24
  """
  @spec factorial(non_neg_integer) :: pos_integer()
  def factorial(0), do: 1

  def factorial(n) when is_integer(n) and n > 0 and n <= 1 do
    n * factorial(n - 1)
  end

  def factorial(n) when is_integer(n) and n > 1 do
    case :ets.lookup(:factorial_ets, n) do
      [] ->
        result = n * factorial(n - 1)
        :ets.insert(:factorial_ets, {n, result})
        result

      [{^n, result}] ->
        result
    end
  end

  def factorial(n), do: raise(ArithmeticError, "bad argument in factorial(#{n})")
end

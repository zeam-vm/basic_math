defmodule BasicMath do
  @moduledoc """
  BasicMath provides faster basic mathematic functions, including factorial.
  """

  @spec factorial(non_neg_integer) :: pos_integer
  defdelegate factorial(n), to: BasicMath.Factorial.FactorialEts
end

Benchee.run(%{
  "FactorialBasic.factorial(0)" => fn -> BasicMath.Factorial.FactorialBasic.factorial(0) end,
  "FactorialBasic.factorial(10)" => fn -> BasicMath.Factorial.FactorialBasic.factorial(10) end,
  "FactorialBasic.factorial(100)" => fn -> BasicMath.Factorial.FactorialBasic.factorial(100) end,
  "FactorialBasic.factorial(100)" => fn -> BasicMath.Factorial.FactorialBasic.factorial(1000) end
})

Benchee.run(
  %{
    "FactorialBasic.factorial(0)" => fn -> BasicMath.Factorial.FactorialBasic.factorial(0) end,
    "FactorialBasic.factorial(10)" => fn -> BasicMath.Factorial.FactorialBasic.factorial(10) end,
    "FactorialBasic.factorial(100)" => fn -> BasicMath.Factorial.FactorialBasic.factorial(100) end,
    "FactorialBasic.factorial(1000)" => fn ->
      BasicMath.Factorial.FactorialBasic.factorial(1000)
    end,
    "FactorialEts.factorial(0)" => fn -> BasicMath.Factorial.FactorialEts.factorial(0) end,
    "FactorialEts.factorial(10)" => fn -> BasicMath.Factorial.FactorialEts.factorial(10) end,
    "FactorialEts.factorial(100)" => fn -> BasicMath.Factorial.FactorialEts.factorial(100) end,
    "FactorialEts.factorial(1000)" => fn -> BasicMath.Factorial.FactorialEts.factorial(1000) end
  },
  memory_time: 2,
  print: [fast_warning: false]
)

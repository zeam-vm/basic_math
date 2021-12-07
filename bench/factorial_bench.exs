Benchee.run(
  %{
    "FactorialBasic" => fn input -> BasicMath.Factorial.FactorialBasic.factorial(input) end,
    "FactorialEts" => fn input -> BasicMath.Factorial.FactorialEts.factorial(input) end
  },
  inputs: %{
    "10" => 10,
    "100" => 100,
    "1000" => 1000
  },
  memory_time: 2,
  print: [fast_warning: false]
)

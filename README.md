# BasicMath

BasicMath provides faster basic mathematic functions, including factorial.

## Installation

In order to use `BasicMath`, you will need Elixir installed. Then create an Elixir project via the `mix` build tool:

```sh
$ mix new my_app
```

Then you can add `BasicMath` as dependency in your `mix.exs`. At the moment you will have to use a Git dependency while we work on our first release:

```elixir
def deps do
  [
    {:basic_math, "~> 0.1.0-dev", github: "zeam-vm/basic_math", branch: "main"}
  ]
end
```

## Benchmarks

### Factorial

`BasicMath.factorial/1` adopts the cache strategy by ETS.

`bench/factorial_bench.exs`:

```
Name                                     ips        average  deviation         median         99th %
FactorialEts.factorial(0)            11.23 M       89.02 ns   ±325.72%           0 ns        1000 ns
FactorialBasic.factorial(0)          11.06 M       90.43 ns   ±324.27%           0 ns        1000 ns
FactorialEts.factorial(10)            7.13 M      140.34 ns ±13603.43%           0 ns        1000 ns
FactorialEts.factorial(100)           5.66 M      176.78 ns ±12435.88%           0 ns        1000 ns
FactorialEts.factorial(1000)          4.93 M      202.66 ns ±15233.90%           0 ns        1000 ns
FactorialBasic.factorial(10)          3.61 M      277.39 ns ±12350.84%           0 ns        1000 ns
FactorialBasic.factorial(100)         0.21 M     4666.00 ns   ±109.24%        4000 ns        9000 ns
FactorialBasic.factorial(1000)     0.00243 M   412119.42 ns     ±4.10%      407000 ns      495000 ns

Comparison: 
FactorialEts.factorial(0)            11.23 M
FactorialBasic.factorial(0)          11.06 M - 1.02x slower +1.42 ns
FactorialEts.factorial(10)            7.13 M - 1.58x slower +51.32 ns
FactorialEts.factorial(100)           5.66 M - 1.99x slower +87.76 ns
FactorialEts.factorial(1000)          4.93 M - 2.28x slower +113.65 ns
FactorialBasic.factorial(10)          3.61 M - 3.12x slower +188.37 ns
FactorialBasic.factorial(100)         0.21 M - 52.42x slower +4576.99 ns
FactorialBasic.factorial(1000)     0.00243 M - 4629.72x slower +412030.41 ns

Memory usage statistics:

Name                              Memory usage
FactorialEts.factorial(0)                  0 B
FactorialBasic.factorial(0)                0 B - 1.00x memory usage +0 B
FactorialEts.factorial(10)                40 B - ∞ x memory usage +40 B
FactorialEts.factorial(100)              120 B - ∞ x memory usage +120 B
FactorialEts.factorial(1000)            1120 B - ∞ x memory usage +1120 B
FactorialBasic.factorial(10)               0 B - 1.00x memory usage +0 B
FactorialBasic.factorial(100)              0 B - 1.00x memory usage +0 B
FactorialBasic.factorial(1000)             0 B - 1.00x memory usage +0 B
```

## License

Copyright (c) 2021 Susumu Yamazaki

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

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

The results of `bench/factorial_bench.exs`:

```
##### With input 10 #####
Name                     ips        average  deviation         median         99th %
FactorialEts          5.65 M      176.85 ns  ±6310.57%           0 ns         980 ns
FactorialBasic        3.70 M      270.35 ns  ±9247.89%           0 ns         980 ns

Comparison: 
FactorialEts          5.65 M
FactorialBasic        3.70 M - 1.53x slower +93.50 ns

Memory usage statistics:

Name              Memory usage
FactorialEts              40 B
FactorialBasic             0 B - 0.00x memory usage -40 B

**All measurements for memory usage were the same**

##### With input 100 #####
Name                     ips        average  deviation         median         99th %
FactorialEts          4.20 M        0.24 μs  ±3636.30%           0 μs        0.98 μs
FactorialBasic        0.22 M        4.56 μs    ±62.00%        3.98 μs        9.98 μs

Comparison: 
FactorialEts          4.20 M
FactorialBasic        0.22 M - 19.15x slower +4.33 μs

Memory usage statistics:

Name              Memory usage
FactorialEts             120 B
FactorialBasic             0 B - 0.00x memory usage -120 B

**All measurements for memory usage were the same**

##### With input 1000 #####
Name                     ips        average  deviation         median         99th %
FactorialEts          5.44 M       0.184 μs ±11337.84%           0 μs        0.98 μs
FactorialBasic     0.00242 M      413.15 μs     ±3.59%      407.98 μs      468.98 μs

Comparison: 
FactorialEts          5.44 M
FactorialBasic     0.00242 M - 2247.01x slower +412.97 μs

Memory usage statistics:

Name              Memory usage
FactorialEts           1.09 KB
FactorialBasic            0 KB - 0.00x memory usage -1.09375 KB
```

## License

Copyright (c) 2021 Susumu Yamazaki

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

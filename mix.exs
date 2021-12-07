defmodule BasicMath.MixProject do
  use Mix.Project

  def project do
    [
      app: :basic_math,
      version: "0.1.0-dev",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {BasicMath.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, "~> 0.26", only: :dev, runtime: false},
      {:dialyxir, "~> 1.1", only: :dev, runtime: false},
      {:git_hooks, "~> 0.6.4", only: :dev, runtime: false},
      {:benchee, "~> 1.0", only: :dev}
    ]
  end
end

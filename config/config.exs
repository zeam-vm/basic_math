# `import Config` instead of `use Mix.Config` when Elixir 1.9+
use Mix.Config

if Mix.env() == :dev do
  config :git_hooks,
    auto_install: true,
    verbose: true,
    branches: [
      whitelist: ["feature-.*"],
      blacklist: ["main"]
    ],
    hooks: [
      pre_commit: [
        tasks: [
          {:cmd, "mix format --check-formatted"}
        ]
      ],
      pre_push: [
        tasks: [
          {:cmd, "mix dialyzer"},
          {:cmd, "mix test --color"}
        ]
      ]
    ]
end

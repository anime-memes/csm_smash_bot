defmodule CSMSmashBot.MixProject do
  use Mix.Project

  def project do
    [
      app: :csm_smash_bot,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      test_coverage: [tool: ExCoveralls]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {CSMSmashBot.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:nadia, "~> 0.7.0"},
      {:credo, "~> 1.5.4", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.13.4", only: :test, runtime: false},
      {:dialyxir, "~> 1.0.0", only: :dev, runtime: false},
      {:jason, "~> 1.2.2"},
      {:distillery, "~> 2.1.1"},
      {:gen_tcp_accept_and_close, "~> 0.1.0"}
    ]
  end
end

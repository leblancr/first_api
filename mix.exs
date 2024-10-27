defmodule FirstApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :first_api,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      extras: ["README.md"], # Optional additional files to include
      main: "FirstApi", # The main module to be documented
      name: "FirstApi"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {FirstApi.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, "~> 0.34", only: :dev, runtime: false},
      {:plug_cowboy, "~> 2.0"},
      {:jason, "~> 1.4"}
    ]
  end
end

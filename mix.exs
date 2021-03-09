defmodule ListLength.MixProject do
  use Mix.Project

  def project do
    [
      app: :list_length,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "ListLength",
      source_url: "https://github.com/svgreve/ListLength",
      homepage_url: "http://localhost:4000/ListLength",
      docs: [
        main: "ListLength",
        logo: "path/to/logo.png",
        extras: ["README.md"]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, "~> 0.23", only: :dev, runtime: false},
    ]
  end
end

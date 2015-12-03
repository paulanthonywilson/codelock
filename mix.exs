defmodule Codelock.Mixfile do
  use Mix.Project

  def project do
    [app: :codelock,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :elixir_ale, :ethernet, :poison, :plug, :cowboy],
     mod: {Codelock, {}}]
  end

  defp deps do
    [
      { :exrm, "~> 0.15.0" },
      { :elixir_ale, "~> 0.3.0" },
      { :ethernet, git: "https://github.com/cellulose/ethernet.git" },
      { :cowboy, "~> 1.0.0" },
      { :plug, "~> 1.0" },
      { :poison, "~> 1.5" }
    ]
  end
end

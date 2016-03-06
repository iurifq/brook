defmodule Brook.Mixfile do
  use Mix.Project

  def project do
    [app: :brook,
     version: "0.0.1",
     elixir: "~> 1.1",
     test_coverage: [tool: ExCoveralls],
     deps: deps]
  end

  def application do
    [ applications: ~w[logger]a,
      mod: { Brook, [] } ]
  end

  defp deps do
    [
      {:elixir_bencode, "~> 1.0.0"},
      {:socket, "~> 0.3.1"},
      {:excoveralls, "~> 0.4", only: :test},
    ]
  end
end

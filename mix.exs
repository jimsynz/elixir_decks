defmodule Decks.Mixfile do
  use Mix.Project

  def project do
    [app: :decks,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     preferred_cli_env: [espec: :test],
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    [applications: [:logger]]
  end

  def description do
    """
    Implements standard card decks for Elixir-based card games.
    """
  end

  def package do
    [
     maintainers: [ "James Harton <james@messagerocket.co>" ],
     licenses: ["MIT"],
     links: %{
       "GitHub" => "https://github.com/elixir_decks"
     },
    ]
  end

  defp deps do
    [
      {:espec, "~> 0.8.8", only: :test}
    ]
  end
end

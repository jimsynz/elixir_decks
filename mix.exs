defmodule Decks.Mixfile do
  use Mix.Project

  def project do
    [app: :decks,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     preferred_cli_env: [espec: :test],
     maintainers: [ "James Harton <james@messagerocket.co>" ],
     licenses: ["MIT"],
     links: %{
       "GitHub" => "https://github.com/elixir_decks"
     },
     description: description,
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

  defp deps do
    [
      {:espec, "~> 0.8.8", only: :test}
    ]
  end
end

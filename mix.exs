defmodule AWSAuth.Mixfile do
  use Mix.Project

  def project do
    [
      app: :aws_auth,
      version: "0.8.0",
      elixir: "~> 1.13",
      description: description(),
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [coveralls: :test]
    ]
  end

  def application do
    [applications: [:logger, :crypto]]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.29.1", only: :dev},
      {:credo, "~> 1.5", only: [:dev, :test]}
    ]
  end

  defp description do
    """
    AWS Signature Version 4 Signing Library.
    Fork used internally and mainted by Avenue.
    """
  end
end

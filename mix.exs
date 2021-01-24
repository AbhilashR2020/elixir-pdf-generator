defmodule PdfGenerator.Mixfile do
  use Mix.Project

  def project do
    [
      app: :pdf_generator,
      name: "PDF Generator",
      version: "0.6.2",
      elixir: ">= 1.1.0",
      deps: deps(),
      description: description(),
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [
      applications: [:logger],
      mod: { PdfGenerator, [] }
    ]
  end

  def description do
    """
    A wrapper for wkhtmltopdf and chrome-headless(puppeteer) with optional
    support for encryption via pdftk.
    """
  end

  defp deps do
    [
        # communication with external programs
        {:ex_doc, "~> 0.19", only: :dev, runtime: false}
    ]
  end
end

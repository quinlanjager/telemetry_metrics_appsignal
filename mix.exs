defmodule TelemetryMetricsAppsignal.MixProject do
  use Mix.Project

  def project do
    [
      app: :telemetry_metrics_appsignal,
      version: "1.2.1",
      elixir: "~> 1.10",
      elixirc_paths: elixirc_paths(Mix.env()),
      source_url: "https://github.com/surgeventures/telemetry_metrics_appsignal",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      docs: docs()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:appsignal, "~> 1.12 or ~> 2.0"},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
      {:hammox, "~> 0.2", only: :test},
      {:jason, "~> 1.1", optional: true},
      {:telemetry, "~> 0.4 or ~> 1.0"},
      {:telemetry_metrics, "~> 0.4"}
    ]
  end

  defp description do
    """
    `Telemetry.Metrics` reporter for AppSignal.
    """
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/surgeventures/telemetry_metrics_appsignal"}
    ]
  end

  defp docs do
    [
      extras: ["CHANGELOG.md", "README.md"],
      main: "TelemetryMetricsAppsignal"
    ]
  end
end

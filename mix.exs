defmodule SebexTestF.MixProject do
  use Mix.Project

  @version "0.3.0"

  def project do
    [
      app: :sebex_test_f,
      version: @version,
      elixir: "~> 1.12",
      package: package(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:sebex_test_e, "~> 0.1.0", organization: "membraneframework_labs"},
      {:sebex_test_c, "~> 0.2.0", organization: "membraneframework_labs"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      description: "",
      organization: "membraneframework_labs",
      maintainers: ["Membrane Team"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => link(),
        "Membrane Framework Homepage" => "https://membraneframework.org"
      }
    ]
  end

  defp link do
    "https://github.com/membraneframework/membrane-core"
  end
end

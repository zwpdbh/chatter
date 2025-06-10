defmodule ChatterWeb.FeatureCase do
  defmacro __using__(opts) do
    # Merge with default async: true unless overridden
    opts = Keyword.merge([async: true], opts)

    quote do
      use ExUnit.Case, unquote(opts)
      use Wallaby.Feature
      import Chatter.Factory
    end
  end
end

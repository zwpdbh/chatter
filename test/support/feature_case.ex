defmodule ChatterWeb.FeatureCase do
  defmacro __using__(opts) do
    # Merge with default async: true unless overridden
    opts = Keyword.merge([async: true], opts)

    quote do
      use ExUnit.Case, unquote(opts)
      use Wallaby.Feature
      import Chatter.Factory

      # To use following feature, we need to
      # set use Phoenix.Router, helpers: true in `ChatterWeb.
      # Then, mix deps.compile phoenix --force && mix compile
      alias ChatterWeb.Router.Helpers, as: Routes
      @endpoint ChatterWeb.Endpoint
    end
  end
end

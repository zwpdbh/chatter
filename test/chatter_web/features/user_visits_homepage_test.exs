defmodule ChatterWeb.UserVisitsHomepageTest do
  use ExUnit.Case, async: true
  use Wallaby.Feature

  feature "user can visit homepage", %{session: session} do
    session
    |> visit("/")
    |> assert_has(Query.css(".title", text: "Welcome to Chatter!"))
  end
end

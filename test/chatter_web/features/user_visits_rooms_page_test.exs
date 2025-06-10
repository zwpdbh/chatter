defmodule ChatterWeb.UserVisitsRoomsPageTest do
  use ChatterWeb.FeatureCase

  feature "user visits rooms page to see a list of rooms", %{session: session} do
    room = insert(:chat_room)

    Route

    session
    |> visit("/rooms")
    |> assert_has(Query.css(".room", text: room.name))
  end
end

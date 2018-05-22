defmodule HelloWeb.RoomChannel do
  use Phoenix.Channel
  require Logger

  def join("room:" <> room_id, _params, socket) do
    Logger.info("Room #{room_id} successfully joined")
    {:ok, socket}
  end

  def handle_in("new_message", %{"body" => body}, socket) do
    broadcast!(socket, "new_message", %{body: body})
    {:noreply, socket}
  end


end
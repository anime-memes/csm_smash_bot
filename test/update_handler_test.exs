defmodule CSMSmashBot.UpdateHandlerTest do
  use ExUnit.Case, async: true

  alias CSMSmashBot.UpdateHandler

  test "ignores updates without message" do
    assert nil == UpdateHandler.handle_update(%{message: nil})
  end

  test "ignores updates without text" do
    assert nil == UpdateHandler.handle_update(%{message: %{text: nil}})
  end

  test "parses text and ignores invalid commands" do
    assert nil ==
             UpdateHandler.handle_update(%{message: %{chat: %{id: 1}, text: "/invalid@botname"}})
  end

  test "parses text and sends response for valid command" do
    assert {1, "info"} =
             UpdateHandler.handle_update(%{message: %{chat: %{id: 1}, text: "/info@botname"}})

    assert {1, "info"} = UpdateHandler.handle_update(%{message: %{chat: %{id: 1}, text: "/info"}})
  end
end

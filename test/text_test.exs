defmodule CSMSmashBot.TextTest do
  use ExUnit.Case, async: true

  alias CSMSmashBot.Text

  test "start_link/0 loads texts from config to persistent term" do
    table = :persistent_term.get()

    Application.get_env(:csm_smash_bot, :texts)
    |> Map.keys()
    |> Enum.each(fn command ->
      assert Enum.find(table, fn {key, _} -> key == command end)
    end)
  end

  test "get_text/1 returns text by key" do
    assert nil == Text.get_text(:key)
    :persistent_term.put(:key, "value")
    assert "value" == Text.get_text(:key)
  end
end

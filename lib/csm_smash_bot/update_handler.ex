defmodule CSMSmashBot.UpdateHandler do
  require Logger

  alias CSMSmashBot.Text

  @valid_commands ~w(help info discord list words tutor lan pad nat ranking smashgg rules framedata next_tournament when)

  def handle_update(%{message: nil}), do: nil

  def handle_update(%{message: %{text: nil}}), do: nil

  def handle_update(%{message: %{chat: %{id: chat_id}, text: text}}) do
    Logger.info("Received message from chat #{chat_id} with text #{text}")

    case String.split(text, "@") |> parse() do
      command when command in @valid_commands -> {chat_id, Text.get_text(String.to_atom(command))}
      _ -> nil
    end
  end

  def handle_update(_), do: nil

  defp parse(["/" <> command, _]), do: command
  defp parse(["/" <> command]), do: command
  defp parse(_), do: nil
end

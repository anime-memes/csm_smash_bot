defmodule CSMSmashBot.UpdateHandler do
  require Logger

  def handle_update(%{message: nil}), do: nil

  def handle_update(%{message: %{text: nil}}), do: nil

  def handle_update(%{message: %{chat: %{id: chat_id}, text: text}}) do
    Logger.info("Received message from chat #{chat_id} with text #{text}")

    response_text = String.split(text, "@") |> parse() |> get_response_text()

    {chat_id, response_text}
  end

  def handle_update(_), do: nil

  defp parse(["/" <> command, _]), do: command
  defp parse(["/" <> command]), do: command
  defp parse(_), do: nil

  defp get_response_text(nil), do: nil

  defp get_response_text(command) do
    Application.get_env(:csm_smash_bot, :texts) |> Map.get(String.to_atom(command), nil)
  end
end

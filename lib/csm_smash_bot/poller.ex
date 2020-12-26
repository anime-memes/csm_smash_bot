defmodule CSMSmashBot.Poller do
  use GenServer
  require Logger

  alias CSMSmashBot.UpdateHandler

  def start_link(_) do
    Logger.info("Started poller")
    GenServer.start_link(__MODULE__, nil, name: __MODULE__)
  end

  def init(_) do
    schedule_update()
    {:ok, 0}
  end

  def handle_info(:update, offset) do
    new_offset = update(offset)
    schedule_update()

    {:noreply, new_offset + 1}
  end

  def schedule_update do
    Process.send_after(self(), :update, 1000)
  end

  def update(offset \\ 0) do
    Nadia.get_updates(offset: offset)
    |> process_updates()
  end

  defp process_updates({:ok, []}), do: -1

  defp process_updates({:ok, results}) do
    results
    |> Enum.map(&process_update/1)
    |> List.last()
  end

  defp process_updates({:error, %Nadia.Model.Error{reason: reason}}) do
    Logger.error(reason)

    -1
  end

  defp process_updates({:error, error}) do
    Logger.error(error)

    -1
  end

  defp process_update(%Nadia.Model.Update{update_id: update_id} = update) do
    Logger.info("Received update: #{inspect(update)}")

    case UpdateHandler.handle_update(update) do
      {chat_id, text} ->
        Nadia.send_message(chat_id, text)
        update_id

      _ ->
        update_id
    end
  end
end

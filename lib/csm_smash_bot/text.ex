defmodule CSMSmashBot.Text do
  use GenServer

  require Logger

  def start_link(_) do
    GenServer.start_link(__MODULE__, nil, name: __MODULE__)
  end

  def get_text(command) do
    GenServer.call(__MODULE__, {:get_text, command})
  end

  @impl GenServer
  def init(_) do
    Process.send(self(), :load_text, [])
    {:ok, nil}
  end

  @impl GenServer
  def handle_call({:get_text, command}, _, state) do
    {:reply, :persistent_term.get(command, nil), state}
  end

  @impl GenServer
  def handle_info(:load_text, state) do
    Application.get_env(:csm_smash_bot, :texts)
    |> Enum.each(fn {command, text} -> :persistent_term.put(command, text) end)

    {:noreply, state}
  end
end

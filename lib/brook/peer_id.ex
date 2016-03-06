defmodule Brook.PeerID do
  import Brook.Helpers, only: [generate_bytes: 1]

  def start_link do
    Agent.start_link(fn -> generate_peer_id end, name: __MODULE__)
  end

  def get do
    Agent.get(__MODULE__, &(&1))
  end

  defp generate_peer_id do
    { peer_id, _} = String.split_at("brook-#{:erlang.system_time}", 20)
    peer_id
  end
end

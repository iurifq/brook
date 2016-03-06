defmodule Brook do
  @moduledoc """
  This application is a simple BitTorrent client.
  """

  use Application

  def start(_type, _args) do
    Brook.Supervisor.start_link
  end
end

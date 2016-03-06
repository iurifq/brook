defmodule Brook.Torrent do
  alias Brook.Helpers

  defstruct [:metainfo, :info_hash]

  def parse_file(file_path) do
    {:ok, file_content} = File.read(file_path)
    metainfo = Bencode.decode!(file_content)
    info_hash = Helpers.sha1(Bencode.encode!(metainfo["info"]))
    struct(__MODULE__, metainfo: metainfo, info_hash: info_hash)
  end
end

defmodule Brook.Helpers do
  def sha1(binary) do
    :crypto.hash(:sha, binary)
  end

  def generate_bytes(size) do
    :crypto.strong_rand_bytes(size)
  end
end

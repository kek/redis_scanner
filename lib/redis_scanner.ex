defmodule RedisScanner do
  @moduledoc """
  Documentation for `RedisScanner`.
  """

  @spec stream() :: Enumerable.t()
  @doc """
  Generates a stream from a Redis SCAN operation.
  """
  def stream() do
    Redix.command!(:redix, ~w(KEYS *))
  end
end

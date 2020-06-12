defmodule RedisScannerTest do
  use ExUnit.Case
  doctest RedisScanner

  test "scans redis keys" do
    {:ok, redix} = Redix.start_link()
    Redix.command!(redix, ~w(SET hello 1))
    Redix.command!(redix, ~w(SET world 1))

    result =
      RedisScanner.stream()
      |> Stream.map(& &1)
      |> Enum.take(2)

    assert result == ["hello", "world"]
  end
end

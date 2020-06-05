defmodule RedisScannerTest do
  use ExUnit.Case
  doctest RedisScanner

  test "greets the world" do
    assert RedisScanner.hello() == :world
  end
end

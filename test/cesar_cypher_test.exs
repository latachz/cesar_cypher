defmodule CesarCypherTest do
  use ExUnit.Case
  doctest CesarCypher

  test "test cesar's cypher" do
    assert CesarCypher.cesar_cypher('DOG') == 'EPH'
  end
end

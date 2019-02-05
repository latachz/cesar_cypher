defmodule CesarCypher do
  def main() do
    IO.puts "Give me your file name"
  end

  def main(name) do
    read_cypher(name)
    |> cesar_cypher()
  end

  @spec read_cypher(binary()) :: :ok | binary()
  def read_cypher(name) when is_bitstring(name) do
    case File.read(name) do
      {:ok, cypher} -> cypher
      _ -> raise "Wrong file name"
    end
  end

  def cesar_cypher(text) do
    text
    |> to_charlist
    |> Enum.map(fn x -> x + 1 end)
  end
end

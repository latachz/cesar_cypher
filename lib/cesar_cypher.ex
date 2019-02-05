defmodule CesarCypher do
  def main() do
    IO.puts "Give me your file name"
    IO.read(:line) 
    |> String.trim()
    |> cesar_cypher()
  end

  def main(name) do
    read_cypher(name)
    |> cesar_cypher()
  end

  @spec read_cypher!(binary()) :: binary()
  def read_cypher!(name) when is_binary(name) do
    case File.read(name) do
      {:ok, cypher} -> cypher
      {:error, :enoent} -> raise "Wrong file name #{name}"
    end
  end

  @spec cesar_cypher(binary()) :: binary()
  def cesar_cypher(text) do
    text
    |> to_charlist()
    |> Enum.map(fn x -> x + 1 end)
    |> to_string()
  end
end

defmodule App.Challenges.ArrayOfNElements do
  def handle do
    size = IO.read(:line)
      |> String.trim
      |> String.to_integer

    data = createArray(size - 1)
      |> Enum.map(fn item -> Integer.to_string(item) end)
      |> Enum.join(", ")

    IO.puts("[#{data}]")
  end

  def createArray(size) when size > 0 do
    [size] ++ createArray(size - 1)
  end

  def createArray(size) when size == 0 do
    [size]
  end
end

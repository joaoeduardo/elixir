defmodule App.Challenges.FilterArray do
  def handle do
    delimiter = IO.read(:line)
      |> String.trim
      |> String.to_integer

    IO.read(:all)
      |> String.split
      |> Enum.map(fn item -> String.trim(item) |> String.to_integer end)
      |> remove(delimiter)
  end

  def remove([], _) do
  end

  def remove([head | tail], item) do
    if head < item do
      IO.puts(head)
    end

    remove(tail, item)
  end
end

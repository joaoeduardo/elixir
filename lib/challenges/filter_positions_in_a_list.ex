defmodule App.Challenges.FilterPositionsInAList do
  def handle do
    items = IO.read(:all) |> String.split

    filter(items, 0)
  end

  def filter([_ | tail], index) when rem(index, 2) == 0 do
    filter(tail, index + 1)
  end

  def filter([head | tail], index) when rem(index, 2) == 1 do
    IO.puts(head)

    filter(tail, index + 1)
  end

  def filter([], _) do
  end
end

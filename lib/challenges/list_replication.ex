defmodule App.Challenges.ListReplication do
  def handle do
    number = IO.read(:line) |> String.trim |> String.to_integer

    IO.read(:all)
      |> String.split
      |> replicate(number)
      |> Enum.join("\n")
      |> IO.write
  end

  def replicate([], _) do
    []
  end

  def replicate([head | tail], times) do
    List.duplicate(head, times) ++ replicate(tail, times)
  end
end

defmodule App.Challenges.SolveMeFirstFP do
  def main do
    number1 = IO.read(:line) |> String.trim |> String.to_integer
    number2 = IO.read(:line) |> String.trim |> String.to_integer

    IO.write(number1 + number2)
  end
end

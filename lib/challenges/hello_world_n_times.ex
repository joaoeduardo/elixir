defmodule App.Challenges.HelloWorldNTimes do
  def main do
    number = IO.read(:line) |> String.trim |> String.to_integer

    repeatOutput(number)
  end

  def repeatOutput(times) do
    if times > 0 do
      repeatOutput(times - 1)

      IO.puts("Hello World")
    end
  end
end

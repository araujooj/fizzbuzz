defmodule Fizzbuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handleFileRead()
  end

  defp handleFileRead({:ok, result}) do
    # "1, 2, 3, 4"
    result =
      result
      |> String.split(",")
      |> Enum.map(&convertAndEvaluateNumbers/1)

    {:ok, result}
  end

  defp handleFileRead({:error, reason}), do: {:error, "Error reading the file: #{reason}"}

  defp convertAndEvaluateNumbers(number) do
    number
    |> String.to_integer()
    |> evaluateNumbers()
  end

  defp evaluateNumbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: 'FizzBuzz'
  defp evaluateNumbers(number) when rem(number, 3) == 0, do: 'Fizz'
  defp evaluateNumbers(number) when rem(number, 5) == 0, do: 'Buzz'
  defp evaluateNumbers(number), do: number
end

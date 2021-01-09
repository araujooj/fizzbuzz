defmodule Fizzbuzz do
  def build(file_name) do
    file_name
    |> File.read()
    |> handleFileRead()
  end

  def handleFileRead({:ok, result}) do
    # "1, 2, 3, 4"
    result
    |> String.split(",")
    |> Enum.map(fn number -> String.to_integer(number) end)
  end

  def handleFileRead({:error, reason}) do
    "Error reading the file: #{reason}"
  end
end

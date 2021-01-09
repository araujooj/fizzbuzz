defmodule FizzbuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expectedResponse = {:ok, [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 'Buzz', 'FizzBuzz', 'Buzz']}
      assert Fizzbuzz.build("numbers.txt") == expectedResponse
    end

    test "when a invalid file is provided, returns an error" do
      expectedResponse = {:error, "Error reading the file: enoent"}
      assert Fizzbuzz.build("invalid.txt") == expectedResponse
    end
  end
end

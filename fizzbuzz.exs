defmodule FizzBuzz do

  def fizz_buzz(x) when (rem(x,3) == 0 and rem(x,5) == 0) do
    "fizz buzz"
  end

  def fizz_buzz(x) when rem(x,3) == 0 do
    "fizz"
  end

  def fizz_buzz(x) when rem(x,5) == 0 do
    "buzz"
  end

  def fizz_buzz(x) do
    "#{x}"
  end

  def main do
    #IO.inspect Enum.map(1..100, fn x -> fizz_buzz(x) end)
    1..100
    #|> Enum.map(fn x -> fizz_buzz(x) end)
    |> Enum.map(&fizz_buzz/1)
  end

end

FizzBuzz.main
|> Enum.join(", ")
|> IO.inspect

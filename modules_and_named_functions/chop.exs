defmodule Chop do
  def guess(actual, range = low..high) do
    current_guess =  div(low + high, 2)
    IO.puts "Is it #{current_guess}?"
    _test_guess(actual, current_guess, range)
  end

  defp _test_guess(actual, actual, _) do
    IO.puts "The actual number is #{actual}."
  end

  defp _test_guess(actual, current_guess, _..high) when actual > current_guess do
    guess(actual, current_guess..high)
  end

  defp _test_guess(actual, current_guess, low.._) when actual < current_guess do
    guess(actual, low..current_guess)
  end
end

defmodule MyList do
  def primes_up_to number do
    range = span(2, number)
    non_prime_numbers = for a <- range, b <- range,
      a <= b, a * b <= number,
      do: a * b
    range -- non_prime_numbers
  end

  defp span(from, to) when from > to, do: []
  defp span(from, to), do: [ from | span(from + 1, to) ]
end

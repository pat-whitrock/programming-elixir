defmodule MyList do
  def len([]), do: 0
  def len([ _head | tail ]), do: 1 + len(tail)

  def square([]), do: []
  def square([ head | tail ]), do: [ head * head | square(tail) ]

  def add_1([]), do: []
  def add_1([ head | tail ]), do: [ head + 1 | add_1(tail) ]

  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

  def sum([]), do: 0
  def sum([ head | tail ]), do: head + sum(tail)

  def reduce([], value, _func), do: value
  def reduce([ head | tail ], value, func) do
    reduce(tail, func.(head, value), func)
  end

  def mapsum([], _func), do: 0
  def mapsum([ head | tail ], func), do: func.(head) + mapsum(tail, func)

  def max([val]), do: val
  def max([ head | tail ]), do: Kernel.max(head, max(tail))

  def caesar([], _val), do: []
  def caesar([ head | tail ], val) when (head + val) <= ?z do
    [ head + val | caesar(tail, val) ]
  end
  def caesar([ head | tail ], val) do
    [ head + val - 26 | caesar(tail, val) ]
  end

  def span(from, to) when from > to, do: []
  def span(from, to), do: [ from | span(from + 1, to) ]
end

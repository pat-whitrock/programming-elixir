defmodule MyList do
  def all?(list), do: all?(list, fn x -> !!x end, true)
  def all?(list, func), do: all?(list, func, true)
  def all?(_list, _fn, boolean) when boolean == false, do: false
  def all?([], _fn, boolean) when boolean == true, do: true
  def all?([ head | tail ], func, _boolean) do
    all?(tail, func, func.(head))
  end

  def each([], _func), do: []
  def each([ head | tail ], func) do
    [ func.(head) | each(tail, func) ]
  end

  def filter([], _func), do: []
  def filter([ head | tail ], func) do
    if func.(head) do
      [ head | filter(tail, func) ]
    else
      filter(tail, func)
    end
  end

  # Take a subject list to split and a count to split it at
  # Iterate the count on each call
  # Remove the head from the subject list on each call
  # Add the head of the list to the predicate list
  def split(subject, target), do: split(subject, [], target, 0)
  def split(subject, predicate, target, count) when target == count do
    [ Enum.reverse(predicate), subject ]
  end
  def split([ head | tail ], predicate, target, count) do
    split(tail, [ head | predicate ], target, count + 1)
  end

  def take(list, count), do: hd(split(list, count))

  def flatten([ head | tail ]), do: flatten(head) ++ flatten(tail)
  def flatten([]), do: []
  def flatten(element), do: [element]
end

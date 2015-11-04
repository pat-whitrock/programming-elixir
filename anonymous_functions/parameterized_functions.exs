prefix = fn
  pre -> fn
    text -> IO.puts pre <> text
  end
end

mrs = prefix.("Mrs")
mrs.("Smith")
prefix.("Elixir").("Rocks")

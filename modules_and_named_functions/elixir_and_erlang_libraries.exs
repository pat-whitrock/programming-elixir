# Convert a float to a string with two decimal digits. (Erlang)
IO.puts :io.format("The number is ~.2f~n", [5.678])

# Get the value of an operating-system environment variable. (Elixir)
IO.puts System.get_env("USER")

# Return the extension component of a file name (so return .exs if given "dave/test.exs"). (Elixir)
IO.puts Path.extname("chop.exs")

# Return the process’s current working directory. (Elixir)
IO.puts System.cwd

# Convert a string containing JSON into Elixir data structures. (Just find; don’t install.)


# Execute a command in your operating system’s shell.
IO.puts elem(System.cmd("ls", []), 0)

defmodule SayHello do
  def hello( ) do
    name = IO.gets "What is your name? "
    name = String.trim_trailing( name )

    IO.puts "Howdy #{name}!"
  end
end

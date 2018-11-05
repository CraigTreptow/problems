defmodule StringLengther do
  def doit( ) do
    s = prompter( "What is the input string? " )

    IO.puts "#{s} has #{String.length( s )}"
  end

  def prompter( question ) do
    s = IO.gets( question )

    case(s) do
      "\n" -> help_message( question )
      _    -> String.trim_trailing( s )
    end
  end

  defp help_message( question ) do
    IO.puts "Please enter a string."
    prompter( question )
  end
end

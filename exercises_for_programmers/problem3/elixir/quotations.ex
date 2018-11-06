defmodule Quotations do
  def doit( ) do
    quote   = prompter( "What is the quote? " )
    speaker = prompter( "Who said it? " )

    IO.puts("#{speaker} says, \"#{quote}\"")
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

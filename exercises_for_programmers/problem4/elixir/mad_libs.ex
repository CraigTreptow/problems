defmodule MadLibs do
  def doit( ) do
    noun      = prompter( "What is the noun? " )
    verb      = prompter( "What is the verb? " )
    adjective = prompter( "What is the adjective? " )
    adverb    = prompter( "What is the adverb? " )

    IO.puts("Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!")
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

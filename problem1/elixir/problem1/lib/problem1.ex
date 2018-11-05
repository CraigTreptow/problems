defmodule Problem1 do
  @moduledoc """
  Documentation for Problem1.
  """

  defdelegate solve, to: Problem1.Solver, as: :solve
end

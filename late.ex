defmodule Late do
  @moduledoc """
  Late penalty calculator using Elixir 1.9.0
  Adolfo Neto, Federal University of Technology - Paraná
  """
  @base 1.08
  @precision 2

  @doc """
  Returns the panalty for an amount of hours
  """
  def late(hours) do
    :math.pow(@base, hours)
    |> decimal_precision()
  end

  @doc """
  Rounds a float number to a given precision
  """
  defp decimal_precision(number) do
    number
    |> Float.round(@precision)
  end

  @doc """
  Prints a line from the table and returns the penalty
  """
  def printTableLine(current_line) do
    penalty = late(current_line)
    IO.puts("Hour #{current_line} late = #{penalty}% penalty")
    penalty
  end

  @doc """
  Prints a table listing hour and penalty up until a max_penalty
  """
  def printTable(max_penalty) do
    printTableAux(1, max_penalty)
  end

  @doc """
  Auxiliary function to print the penalty table
  """
  defp printTableAux(n, max_penalty) do
    penalty = printTableLine(n)
    if penalty <= max_penalty, do: printTableAux(n + 1, max_penalty)
  end
end

# Prints a table listing hour and penalty up until penalty is 100 or higher
Late.printTable(100)

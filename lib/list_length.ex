defmodule ListLength do
  @moduledoc """
   This is the ListLength module.
  """

  @doc """
    call/1
    Counts the number of elements in the list.

    ## Example

    iex> ListLength.call([1, 2, :a, "fourth element"])

    4
  """
  def call(list) do
    count_items(list, 0)
  end


  defp count_items([], count) do
    count
  end

  defp count_items( [_head | tail], count) do
    count = count + 1
    count_items(tail, count)
  end
end

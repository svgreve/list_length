defmodule ListLengthTest do
  use ExUnit.Case
  doctest ListLength

  describe "call/1" do

    test "returns number of list numeric elements" do
      list = [ 1, 2, 3, 4 ]
      response = ListLength.call(list)
      expected_response = 4
      assert response == expected_response
    end

    test "returns number of list generic elements" do
      list = [ "first element", :atom, 3.0, <<10>> ]
      response = ListLength.call(list)
      expected_response = 4
      assert response == expected_response
    end

  end
end

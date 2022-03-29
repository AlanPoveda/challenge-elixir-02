defmodule Challengeelixir02Test do
  use ExUnit.Case

  describe "call/1" do
    test "Teste return the quantity odd mumbers" do
     list1 = ["1", "3", "6", "43", "banana", "6", "abc"]
     list2 = ["2", "3", "6", "43", "banana", "6", "abc"]
     list3 = ["2", "opa", "6", "tomate", "banana", "Alan", "abc"]

     assert Challengeelixir02.call(list1) == 3
     assert Challengeelixir02.call(list2) == 2
     assert Challengeelixir02.call(list3) == 0
    end
  end
end

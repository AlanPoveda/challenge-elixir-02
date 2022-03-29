defmodule Challengeelixir02 do
  defp onlyInteger(list) do
    Enum.flat_map(list, fn string ->
      case Integer.parse(string) do
        # transform to integer
        {int, _rest} -> [int]
        # skip the value
        :error -> []
      end
    end)
  end

  defp oddNumber(list) do
    Enum.filter(list, fn num ->
      isodd(num)
    end)
  end

  defp isodd(value) do
    Integer.mod(value, 2) != 0
  end

  def call(list) do
    onlyInteger(list)
    |> oddNumber
    |> length
  end
end

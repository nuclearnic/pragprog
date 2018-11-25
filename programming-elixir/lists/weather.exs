defmodule WeatherHistory do
  def for_location_27([]), do: []
  def for_location_27([[time, 27, temp, rain] | tail]) do
    [ [time, 27, temp, rain] | for_location_27(tail) ]
  end
  def for_location_27([ _ | tail ]), do: for_location_27(tail)

  def for_location([], _), do: []
  def for_location([ head = [_, target_loc, _, _] | tail ], target_loc) do
    [ head | for_location(tail, target_loc)]
  end
  def for_location( [ _ | tail ] , target_loc), do: for_location(tail, target_loc)

  def test_data do
    [
      [1366225622, 21, 11, 0.125],
      [1366225622, 27, 20, 0.25],
      [1366225622, 1, 13, 0.5],
      [1366225622, 27, 14, 0.09],
      [1366225622, 27, 20, 0.29],
      [1366225622, 2, 21, 0.55],
      [1366225622, 26, 21, 0.03],
      [1366225622, 27, 30, 0.12],
      [1366225622, 27, 11, 0.2]
    ]
  end
end
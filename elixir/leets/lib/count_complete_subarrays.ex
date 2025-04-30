defmodule Solution do
  @spec count_complete_subarrays(nums :: [integer]) :: [integer]
  def count_complete_subarrays(nums) do
    check_for_complete_subarrays(nums)
  end

  def done_sliding(acc), do: acc

  def slide_window(nums, num_set, left_pointer, right_pointer, freq, acc) do
    value = Enum.at(nums, right_pointer)

    if right_pointer < length(nums) && map_size(freq) < num_set do
      freq = Map.update(freq, value, 1, &(&1 + 1))
      slide_window(nums, num_set, left_pointer, right_pointer + 1, freq, acc)
    else
      value = Enum.at(nums, left_pointer)

      acc =
        cond do
          map_size(freq) == num_set ->
            acc + length(nums) - right_pointer + 1

          true ->
            acc
        end

      freq =
        case Map.get(freq, value) do
          1 ->
            Map.delete(freq, value)

          _ ->
            Map.update(freq, value, nil, &(&1 - 1))
        end

      if left_pointer < length(nums) do
        slide_window(nums, num_set, left_pointer + 1, right_pointer, freq, acc)
      else
        done_sliding(acc)
      end
    end
  end

  def check_for_complete_subarrays(nums) do
    num_set = length(Enum.uniq(nums))

    slide_window(nums, num_set, 0, 0, %{}, 0)
  end
end

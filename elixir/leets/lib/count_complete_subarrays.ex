defmodule Solution do
  @spec count_complete_subarrays(nums :: [integer]) :: [integer]
  def count_complete_subarrays(nums) do
    check_for_complete_subarrays(nums)
    |> Enum.filter(fn x -> x == true end)
    |> length()
  end

  @spec is_complete_subarray?(subarray :: [integer], unique_nums_count :: [integer]) :: boolean
  defp is_complete_subarray?(subarray, unique_nums_count) do
    length(Enum.uniq(subarray)) == unique_nums_count
  end

  def check_for_complete_subarrays(nums) do
    nums_length = length(nums)
    unique_nums_count = length(Enum.uniq(nums))

    Enum.flat_map(0..(nums_length - 1), fn n ->
      Enum.map(n..(nums_length - 1), fn i ->
        Enum.drop(nums, n)
        |> Enum.take(i - n + 1)
        |> is_complete_subarray?(unique_nums_count)
      end)
    end)
  end
end

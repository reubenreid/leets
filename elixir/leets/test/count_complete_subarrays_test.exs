defmodule CountCompleteSubarraysTest do
  use ExUnit.Case
  doctest Solution

  test "first" do
    assert Solution.count_complete_subarrays([1, 3, 1, 2, 2]) == 4
  end

  test "fifth" do
    assert Solution.count_complete_subarrays([4, 4, 4, 4]) == 10
  end

  test "third" do
    assert Solution.count_complete_subarrays([1454, 1789, 1454]) == 3
  end

  test "fourth" do
    assert Solution.count_complete_subarrays([381, 1304, 381, 758, 1304, 381, 758]) == 14
  end

  test "second" do
    assert Solution.count_complete_subarrays([
             1024,
             1024,
             1990,
             1091,
             208,
             512,
             1865,
             1659,
             1024,
             1659,
             1024,
             1897,
             1680,
             595,
             944,
             1785,
             1659,
             266,
             1785,
             1109,
             1529,
             1785,
             512,
             1873,
             1785,
             918,
             1350,
             266,
             1529,
             17,
             1659,
             1402,
             354,
             1529,
             156,
             445,
             130,
             160,
             1024,
             255,
             1877,
             1164,
             255,
             1659,
             557,
             4,
             59,
             1757,
             1280,
             1008,
             1391,
             1508,
             130,
             1197,
             1280,
             864,
             1659,
             17,
             1164,
             1688,
             1024,
             1239,
             266,
             1800,
             411,
             1869,
             557,
             797,
             804,
             1949,
             457,
             972,
             1659,
             349,
             1838,
             380,
             480,
             331,
             1402,
             1772,
             2,
             1489,
             1416,
             1659,
             1390,
             641,
             1761,
             959,
             1357,
             1244,
             1402,
             1659,
             1529
           ]) == 12
  end

  # test "subarrays" do
  #   assert Solution.create_subarrays([1, 3, 1, 2, 2])
  # end
end

Solved on 19.10.2022 in 1:58:59h

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        ht = {}

        for i, e in enumerate(nums):
            if ht.get(target - e) != (None and 0) and (i != ht[target - e]):
                return [i, ht[target - e]]

            ht[e] = i
            


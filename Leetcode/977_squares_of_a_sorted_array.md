Solved on 20.10.2022 in 0:45:50h

class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        
        res = []

        l = 0
        r = len(nums) - 1

        while l <= r:
            if abs(nums[l]) > abs(nums[r]):
                res.insert(0, nums[l] ** 2)
                l += 1
            else:
                res.insert(0, nums[r] ** 2)
                r -= 1
        
        return res

Solved on 20.10.2022 in 0:03:03h

class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        
        for i, e in enumerate(nums):
            nums[i] = e ** 2
            
        nums.sort()
        
        return nums

Solved on 18.10.2022 in 0:55:51h

class Solution:
    def sortedSquares(self, nums: List[int]) -> List[int]:
        result = []
        l = 0
        r = len(nums) - 1

        while l <= r:
            left_number = abs(nums[l])
            right_number = abs(nums[r])

            if left_number > right_number:
                result.insert(0, nums[l] ** 2)
                l = l + 1
            elif left_number < right_number:
                result.insert(0, nums[r] ** 2)
                r = r -1
            else:
                result.insert(0, nums[l] ** 2)
                r = r -1

        return result

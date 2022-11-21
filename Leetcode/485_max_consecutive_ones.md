Solved on 20.10.2022 in 0:02:0h

class Solution:
    def findMaxConsecutiveOnes(self, nums: List[int]) -> int:
        cur_nums = 0
        max_nums = 0
        
        for i in nums:
            if i == 1:
                cur_nums += 1
            else:
                cur_nums = 0
                
            if cur_nums > max_nums:
                max_nums = cur_nums
        
        return max_nums
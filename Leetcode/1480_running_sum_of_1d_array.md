Solved on 19.10.2022 in 0:17:02h

class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        res = []
        
        for i, e in enumerate(nums):
            if i:
                res.append(e + res[i - 1])
            else:
                res.append(e)

        return res
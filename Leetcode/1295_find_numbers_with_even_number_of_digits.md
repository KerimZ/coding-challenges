Solved on 20.10.2022 in 0:10.18h

class Solution:
    def findNumbers(self, nums: List[int]) -> int:
        number = 0
        cur_digits = 0
        
        for i in nums:
            cur_digits += 1
                        
            while i > 9:
                i //= 10
                cur_digits += 1
                        
            if cur_digits % 2 == 0:
                number += 1
                
            cur_digits = 0
            
        return number
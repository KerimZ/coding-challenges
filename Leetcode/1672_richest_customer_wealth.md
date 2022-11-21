Solved on 19.10.2022 in 0:02:53h

class Solution:
    def maximumWealth(self, accounts: List[List[int]]) -> int:
        cur_sum = 0
        max = 0

        for customers in accounts:
            for i in customers:
                cur_sum += i

            if cur_sum > max:
                max = cur_sum

            cur_sum = 0
        
        return max
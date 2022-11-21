# Solved on 18.10.2022 in 0:24:00h

class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        hs = set()

        for i in nums:
            if i in hs:
                return True

            hs.add(i)

        return False

# Solved on 18.10.2022 in 0:22:07h

class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        hs = dict()

        for i in nums:
            if hs.get(i) == 1:
                return True

            hs[i] = 1

        return False

# Solved on 18.10.2022 in 0:12:32h

class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        last = None
        nums.sort()

        for i in nums:
            if i == last:
                return True

            last = i

        return False


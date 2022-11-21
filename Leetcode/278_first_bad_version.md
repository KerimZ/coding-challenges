Solved on 17.10.2022 in 0:38:37h

# The isBadVersion API is already defined for you.
# def isBadVersion(version: int) -> bool:

class Solution:
    def firstBadVersion(self, n: int) -> int:
        l = 0
        r = n
        
        rightmost_bad_version = 0

        while True:
            m = int((l + r) / 2)

            print("m: ", m)

            if isBadVersion(m):
                rightmost_bad_version = m

            if l >= r:
                return rightmost_bad_version

            if isBadVersion(m):
                r = m
            else:
                l = m + 1           


Solved on 17.10.2022 in 0:17:27h

class Solution:
    def search(self, nums: List[int], target: int) -> int:

        left_bound = 0                      # first index
        right_bound = len(nums) - 1          # last index

        while True:
            current_index = int((left_bound + right_bound) / 2)    # index in middle of array
            current = nums[current_index]       # value in middle of array

            if target == current:
                return current_index

            if left_bound == right_bound:
                return -1

            if target > current:
                left_bound = current_index + 1
            elif target < current:
                right_bound = current_index

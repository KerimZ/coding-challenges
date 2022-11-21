Solved on 17.11.2022 in 0:32:56h

class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        """
        Do not return anything, modify nums1 in-place instead.
        """

        nums1_pointer = m - 1
        nums2_pointer = n - 1
        free_pointer = m + n - 1

        while nums1_pointer >= 0 and nums2_pointer >= 0:
            print("nums1_pointer: ", nums1_pointer)
            print("nums2_pointer: ", nums2_pointer)
            print("free_pointer: ", free_pointer)
            print("ARRAY: ", nums1)

            if nums1[nums1_pointer] > nums2[nums2_pointer]:
                nums1[free_pointer] = nums1[nums1_pointer]
                free_pointer -= 1
                nums1_pointer -= 1
            else:
                nums1[free_pointer] = nums2[nums2_pointer]
                free_pointer -= 1
                nums2_pointer -= 1

        while nums1_pointer >= 0 and nums2_pointer < 0:
            nums1[free_pointer] = nums1[nums1_pointer]
            free_pointer -= 1
            nums1_pointer -= 1

        while nums1_pointer < 0 and nums2_pointer >= 0:
            nums1[free_pointer] = nums2[nums2_pointer]
            free_pointer -= 1
            nums2_pointer -= 1


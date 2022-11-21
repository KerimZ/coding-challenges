Solved on 19.10.2022 in 1:01:10h

# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def middleNode(self, head: Optional[ListNode]) -> Optional[ListNode]:
        leng = 0
        te = head
        te_return = head
        mid_node = 0

        while te:
            leng += 1
            te = te.next

        if leng % 2 == 0:
            mid_node = leng // 2 + 1
        else:
            mid_node = (leng // 2) + 1

        for i in range (1, mid_node):
            te_return = te_return.next

        return te_return
            
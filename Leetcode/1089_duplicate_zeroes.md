Solved on 20.10.2022 in 0:20:55h

class Solution:
    def duplicateZeros(self, arr: List[int]) -> None:
        """
        Do not return anything, modify arr in-place instead.
        """
        
        qu = []
        
        for i, e in enumerate(arr):
            if e == 0:
                qu.append(e)
                qu.append(e)
            else:
                qu.append(e)
            
            arr[i] = qu.pop(0)
Solved on 19.10.2022 in 0:06:03h

class Solution:
    def canConstruct(self, ransomNote: str, magazine: str) -> bool:

        ls = {}

        for i in magazine:
            if ls.get(i) != None:
                ls[i] += 1
            else:
                ls[i] = 1

        for i in ransomNote:
            if ls.get(i) != None:
                ls[i] -= 1
            else:
                return False
            
            if ls.get(i) == -1:
                return False
        return True
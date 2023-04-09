import math as m
class Solution:
    def isPalindrome(self, x: int) -> bool:
        s=str(x)
        e=len(s)-1
        count=0
        i=0
        while(i<=e):
            if s[i]==s[e]:
                count+=1
            e-=1
            i+=1
                
        if count==m.ceil(len(s)/2):
            return True
        else:
            return False
        
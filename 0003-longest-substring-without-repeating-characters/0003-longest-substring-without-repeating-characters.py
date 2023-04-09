class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        ans=0
        cs=set()
        end=0
        for i in range(len(s)):
            while (s[i] in cs):
                cs.remove(s[end])
                end+=1
            cs.add(s[i])
            ans=max(ans,i-end+1) 
        return ans    
        

                

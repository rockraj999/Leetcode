class Solution:
    def maxArea(self, height: List[int]) -> int:
        e=len(height)-1
        i=0
        ans=0
        while i<e:
            if height[i]>height[e]:
                ans=max(ans,(e-i)*height[e])
                e-=1
            else:
                ans=max(ans,(e-i)*height[i])
                i+=1
        return ans
        
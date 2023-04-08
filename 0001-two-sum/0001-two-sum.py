class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        num_new=nums.copy()
        num_new.sort()
        i=0
        j=len(nums)-1
        while(i<j):
            if (num_new[i]+num_new[j]==target):
                if(num_new[i]==num_new[j]):
                    return [nums.index(num_new[i]),nums.index(num_new[j],nums.index(num_new[i])+1)]
                else:
                    return [nums.index(num_new[i]),nums.index(num_new[j])]
            elif num_new[i]+num_new[j]<target:
                i=i+1
            else:
                j=j-1
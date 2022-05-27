class Solution(object):
    def lengthOfLastWord(self, s):
        """
        :type s: str
        :rtype: int
        """
        li = list(s.strip().split(" "))
        
        test = li[-1]
        
        if len(test) == 0:
            return len(li[-2])
        else:
            return len(test)
        
        
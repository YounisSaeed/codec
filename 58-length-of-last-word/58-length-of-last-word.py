class Solution(object):
    def lengthOfLastWord(self, s):
        """
        :type s: str
        :rtype: int
        """
        li = list(s.strip().split(" "))
        
        test = li[-1]
        return len(test)
        
        
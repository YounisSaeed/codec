class Solution(object):
    def findMedianSortedArrays(self, nums1, nums2):
        """
        :type nums1: List[int]
        :type nums2: List[int]
        :rtype: float
        """
        merge = sorted(nums1 + nums2)
        n = len(merge)
        if n%2==1:
            return float(merge[n//2])
        else:
            mid1 = merge[n//2-1]
            mid2 = merge[n//2]
            return (mid1+mid2)/2.0
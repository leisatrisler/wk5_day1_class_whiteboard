# "Check if Number and its double exists
# Given an array(aka a list in python) arr of integers, check if there exists two integers N and M such that N is the double of M(i.e. N=2 * M).

# Example 1:
# Input: arr = [10, 2, 5, 3]
# Output: true
# Explanation: N = 10 is the double of M = 5, that is, 10 = 2 * 5.

# Example 2:
# Input: arr = [7, 1, 14, 11]
# Output: true
# Explanation: N = 14 is the double of M = 7, that is, 14 = 2 * 7.

# Example 3:
# Input: arr = [3, 1, 7, 11]
# Output: false
# Explanation: In this case does not exist N and M, such that N = 2 * M."

def solution(array_nums):
    ["array_nums"]
    for n in array_nums:
        if  n * 2  in array_nums:
            return True

    #is this value in our array_nums
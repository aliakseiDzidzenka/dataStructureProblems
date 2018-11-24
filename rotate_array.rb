# Given an array, rotate the array to the right by k steps, where k is non-negative.

arr =  [1,2,3,4,5,6,7] 
k = 3

arr.rotate!(-k)

# or
# arr = arr[arr.size - k...arr.size] + arr[0...arr.size - k]

p arr

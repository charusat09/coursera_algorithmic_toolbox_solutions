# 4 Problem: Least Common Multiple
# Developed on 17/05/2016

a = 28851538
b = 1183019

# expected_ans = 1933053046

t1 = Time.now
arr = [a,b]

while arr[1] > 0
	temp = arr[0] % arr[1]
	arr = [arr[1], temp]
	break if temp == 0
end
lcd = (a * b) / arr[0]
t2 = Time.now
puts "------------------------------------------"
puts "-  LCD for #{a} and #{b} is : #{lcd}     -"  
puts "-  Time taken : #{t2 -t1}                -" 
puts "------------------------------------------"
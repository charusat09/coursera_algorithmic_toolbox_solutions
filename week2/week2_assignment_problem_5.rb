# 5 Advanced Problem: Huge Fibonacci Number modulo m
# Developed on 17/05/2016

n = 281621358815590 
m = 30524
# expected inputs : 281621358815590 30524
# expected output: 11963

def find_fibonacci p
	fibonacci_num = []
	if p == 0
		ans = 0
	elsif p == 1
		ans = 1
	else 
		fibonacci_num = [0,1,1]
		i = 2
		while i < p
			fn = fibonacci_num[i] + fibonacci_num[i-1]
			fibonacci_num << fn
			i += 1
		end
		ans = fibonacci_num.last
	end
end
pattern = []
(0..12345).each do |i|
	fn = find_fibonacci i
	pattern << (fn % m)
end

(1..pattern.length).each do |pp|
	if pattern[pp+2] == 0 && pattern[pp+3] == 1
		p "breaked!!"
		puts pattern.length
		break
	end
end

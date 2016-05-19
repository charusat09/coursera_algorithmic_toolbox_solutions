# 2 Problem: The Last Digit of a Large Fibonacci Number
# Delveloped on : 17/05/2016

abs_time = []
(1..5).each do |a|
	t1 = Time.now
	n = 327305
	fibonacci_num = []
	if n <= 2
		ans = 1
	else 
		fibonacci_num = [0,1,1]
		i = 2
		while i < n
			fn = (fibonacci_num[i] + fibonacci_num[i-1]) % 10
			fibonacci_num << fn
			i += 1
		end
		ans = fibonacci_num.last
	end
	puts "ans = #{ans}"
	t2 = Time.now
	abs_time << (t2-t1)
end
avg_time = abs_time.inject{ |sum, el| sum + el }.to_f / abs_time.size
puts "abs time : #{abs_time}"
puts "avg time : #{avg_time}"

# abs time : [0.859402, 0.835965, 0.707054, 0.662131, 0.753931]
# avg time : 0.7636966000000001
# 3 Problem: Greatest Common Divisor
# Developed on 17/05/2016

class GCD
	def self.old_algo a,b
		t1 = Time.now
		small_num = ( a > b ) ? b : a
		ans = 0
		(1..small_num).each do |n|
			if (( a % n == 0 ) && ( b % n == 0))
				ans = n
			end
		end
		t2 = Time.now

		puts "------------------------------------------"
		puts "-             OLD ALGO                   -"
		puts "-    GCD for #{a} and #{b} is : #{ans}   -"  
		puts "-    Time taken : #{t2 -t1}              -" 
		puts "------------------------------------------"
		return ans
	end

	def self.new_algo a,b
		t1 = Time.now
		arr = [a,b]
		while arr[1] > 0
			temp = arr[0] % arr[1]
			arr = [arr[1], temp]
			break if temp == 0
		end
		t2 = Time.now
		puts "------------------------------------------"
		puts "-             NEW ALGO                   -"
		puts "-  GCD for #{a} and #{b} is : #{arr[0]}  -"  
		puts "-  Time taken : #{t2 -t1}                -" 
		puts "------------------------------------------"
		return arr[0]
	end
end

# a = 95632147852365214569874123652145214785236521478963251236547894545689877343241897858466879789454564321564654564887898798789
# b = 45456898773432418978584668797894545643215646545648878987987899563214785236521456987412365214521478523652147896325123654789

# new_algo_ans = GCD.new_algo a,b

# old_algo_ans = GCD.old_algo a,b

# puts "1 ====== #{new_algo_ans}"
# puts "2 ============ #{old_algo_ans}"
abs_time_for_new_algo = []
abs_time_for_old_algo = []

(1..10).each do |time|
	a = Random.new.rand(0..99999999)
	b = Random.new.rand(0..99999999)

	t1 = Time.now
	new_algo_ans = GCD.new_algo a,b
	
	t2 = Time.now
	old_algo_ans = GCD.old_algo a,b

	t3 = Time.now
	abs_time_for_new_algo << (t2-t1)
	abs_time_for_old_algo << (t3-t2)
end

abs_time_for_new_algo = abs_time_for_new_algo.inject{ |sum, el| sum + el }.to_f / abs_time_for_new_algo.size
abs_time_for_old_algo = abs_time_for_old_algo.inject{ |sum, el| sum + el }.to_f / abs_time_for_old_algo.size

puts "***********************************"
puts "Avg time for New Algo = #{abs_time_for_new_algo} "
puts " Avg time for old Algo = #{abs_time_for_old_algo} "
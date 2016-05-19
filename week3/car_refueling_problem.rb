# You have a car such that if you fill it up to full tank, you can travel with it up to 400 kilometers 
# without refilling it. And you need to get from point A to point B, and the distance between them is 
# 950 kilometers. Of course, you need to refuel on your way, and luckily, there are a few gas stations 
# on your way from A to B. These are denoted by blue circles, and the numbers above them mean the distance 
# from A to the corresponding gas station along the way from A to B. And you need to find the minimum number 
# of refuels to get from A to B. 

# input: 
# we have a car which can travel at most L kilometers, where L is a parameter if it's filled up to full tank. 
# We have a source and destination, A and B, and we have n gas station at distances from x1 to xn in kilometers, 
# from A along the path from A to B. And we need to output the minimum number of refills to get from A to B, not 
# counting the initial refill at A. We want to solve this problem using a greedy strategy, and greedy strategy in 
# general is very easy. You first make some greedy choice, then you reduce your problem to a smaller subproblem, and 
# then you iterate until there are no problems left. 
# D = total distance between A and B

def min_refuel array_of_gas_station, total_distance, l_km
	t1 = Time.now
	total_refuel = 0
	refueld_at = []
	can_travel = l_km
	flag = "yes"
	array_of_gas_station.each_with_index do |arr,index|
		if arr > can_travel
			can_travel += l_km
			total_refuel += 1
			refueld_at << (index-1)
		elsif arr == can_travel
			can_travel += l_km
			total_refuel += 1
			refueld_at << index
		end
	end
	refueld_at.each_with_index do |arr, i|
		if refueld_at[i] == refueld_at[i+1] || refueld_at[i] < 0
			flag = "no"
		end
	end
	if flag.eql? "yes"
		t2 = Time.now
		p "total refuel : #{total_refuel}"
		p "refueled at : #{refueld_at}"
		p "Time taken : #{t2 - t1}"
	else
		t2 = Time.now
		p "can't travel"
		p "Time taken : #{t2 - t1}"
	end
end

min_refuel [300000,600000,900000,1200000,1500000,1800000,2100000,2400000,2700000,3000000,3300000,3600000,3900000,4200000,4500000,4800000], 5000000, 400000
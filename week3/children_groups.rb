# Let's consider the following situation. You've invited a lot of children to a celebration party, 
# and you want to entertain them and also teach them something in the process. You are going to hire 
# a few teachers and divide the children into groups and assign a teacher to each of the groups this 
# teacher will work with this group through the whole party. 

# But you know that for a teacher to work with a group of children efficiently children of that group 
# should be of relatively the same age. More specifically age of any two children in the same group should 
# differ by at most, one year. 

# Also, you want to minimize the number of groups. Because you want to hire fewer teachers, and spend the 
# money on presents and other kinds of entertainment for the children. So, you need to divide children into 
# the minimum possible number of groups. Such that the age of any two children in any group differs by at most one year. 

def min_child_group list_of_children_age
	t1 = Time.now
	groups = []
	index_chk = 0
	sub_group = []
	list_of_children_age.each_with_index do |arr, index|
		if list_of_children_age[index] - list_of_children_age[index_chk] < 1 
			sub_group << list_of_children_age[index]
			if (list_of_children_age.length - 1) == index
				groups << sub_group
			end
		else
			groups << sub_group
  		sub_group = [list_of_children_age[index]]
			index_chk = index
		end
	end
	t2 = Time.now
	p "Numbers of group : #{groups.length}"
	p "Time taken : #{t2 -t1} "
end
test_arr = []
t4 = Time.now
100000.times { test_arr << Random.new.rand(1..1000)}
t5 = Time.now
test_arr.sort!
t6 = Time.now
p "time taken to create array = #{t5-t4}"
p "time take to sort array = #{t6 -t5}"
min_child_group test_arr
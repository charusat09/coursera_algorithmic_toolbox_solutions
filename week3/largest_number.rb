puts "How many numbers will be there ?"
num = gets.chomp.to_i 
a = []
num.times { a << (gets.chomp.to_i )}

(0..a.length).each do |index|
	(index..a.length-1).each do |inner|
		if a[index] < a[inner]
			temp = a[index] 
			a[index]  = a[inner]
			a[inner] = temp
			a[index] <=> a[inner]
		end
	end
end
puts a
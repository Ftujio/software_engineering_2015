a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

if a == 0
	if b == 0
		if c == 0
			puts "X ∈ R"
		else
			puts "X ∈ ∅"
		end
		
		exit
	end
	
	puts "X = %f" % [-c / b]
else
	d = b**2 - 4 * a * c

	if d < 0
		puts "No answers exist"
	elsif d == 0
		answer = -b / 2 * a
		puts "X1 = %f, X2 = %f" % [answer, answer]
		puts "d = 0"
	else
		d_sqrt = Math.sqrt(d)
		first_answer = (-b + d_sqrt) / 2 * a
		second_answer = (-b - d_sqrt) / 2 * a
	
		puts "X1 = %f, X2 = %f" % [first_answer, second_answer]
	end
end

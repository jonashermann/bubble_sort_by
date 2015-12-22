def bubble_sort_by(array)
	swapped = true
	while swapped
		swapped = false
		(0...array.length-1).each do |i|
			if yield(array[i], array[i+1]) > 0
				holder = array[i+1]
				array[i+1] = array[i]
				array[i] = holder
            swapped = true
		    end
	end
    end	
    puts array	
end
array = ["palo","hi", "this", "ziber","uber"]
 bubble_sort_by(array) {|left, right| left.length-right.length}
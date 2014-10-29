
ODD_NUMBERS = proc.new {|item| item.odd?}
MULTIPLES_OF_THREE = lambda {|number| number % 3}

def select_odd_numbers_from(array)
	#array.select(&ODD_NUMBERS)
	array.select {item|item.odd?}

end


def select_odd_numbers_from(array)
	array.select {item|item.odd?}
end

def select_odd_numbers_from(array)
	array.select {item|item.odd?}
end


def select_multiples_of_three_from(array)
	array.select(&MULTIPLES_OF_THREE)
end

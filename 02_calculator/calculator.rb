def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
end

def sum(a)
	if a == []
		sum = 0
	else
		a.inject(:+)
	end
end

def multiply(a,b)
	a * b
end
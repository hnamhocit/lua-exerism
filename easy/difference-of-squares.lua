local function square_of_sum(n)
	local num = 0

	for i = 1, n do
		num = num + i
	end

	return num ^ 2
end

local function sum_of_squares(n)
	local num = 0

	for i = 1, n do
		num = num + i ^ 2
	end

	return num
end

local function difference_of_squares(n)
	return square_of_sum(n) - sum_of_squares(n)
end

print(difference_of_squares(10), sum_of_squares(10), square_of_sum(10))

return { square_of_sum = square_of_sum, sum_of_squares = sum_of_squares, difference_of_squares = difference_of_squares }

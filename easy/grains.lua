local grains = {}

local times = 0

function grains.square(n)
	local result = math.pow(2, n - 1)
	times = n
	return result
end

function grains.total()
	local total = 3

	for i = 3, times do
		total = total + grains.square(i)
	end

	return total
end

return grains

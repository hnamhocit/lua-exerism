local EliudsEggs = {}

function EliudsEggs.egg_count(number)
	local n = 0

	local num = number

	while num > 0 do
		local remainder = num % 2 -- Get the remainder (0 or 1)
		if remainder == 1 then
			n = n + 1
		end
		num = math.floor(num / 2) -- Integer division by 2
	end

	return n
end

return EliudsEggs

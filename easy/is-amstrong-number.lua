local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
	local s = tostring(number)
	local num = 0

	for i = 1, #s do
		local val = tonumber(string.sub(s, i, i))
		num = num + val ^ #s
	end

	return num == number
end

return ArmstrongNumbers

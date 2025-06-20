local Hamming = {}

function Hamming.compute(a, b)
	local diff_count = 0

	if #a ~= #b then
		return -1
	end

	for i = 1, #a do
		local a_ch = string.sub(a, i, i)
		local b_ch = string.sub(b, i, i)
		if b_ch ~= a_ch then
			diff_count = diff_count + 1
		end
	end

	return diff_count
end

return Hamming

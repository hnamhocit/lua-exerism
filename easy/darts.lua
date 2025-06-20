local Darts = {}

function Darts.score(x, y)
	local radiuses = { 1, 5, 10 }

	local curr_radius = nil

	local function calc_max_y(r)
		return math.sqrt(r ^ 2 - x ^ 2)
	end

	for _, r in ipairs(radiuses) do
		local max_y = calc_max_y(r)

		if x >= -r and x <= r then
			if math.abs(y) <= max_y then
				curr_radius = r
				break
			end
		end
	end

	if curr_radius == 10 then
		return 1
	end

	if curr_radius == 5 then
		return 5
	end

	if curr_radius == 1 then
		return 10
	end

	return 0
end

return Darts

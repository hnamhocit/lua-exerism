return {
	value = function(colors)
		local band_colors = {
			black = 0,
			brown = 1,
			red = 2,
			orange = 3,
			yellow = 4,
			green = 5,
			blue = 6,
			violet = 7,
			grey = 8,
			white = 9,
		}

		local result = ""

		for index, color in ipairs(colors) do
			if index <= 2 then
				local r = band_colors[color]
				result = result .. r
			end
		end

		return tonumber(result)
	end,
}

return {
	decode = function(c1, c2, c3)
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
		result = result .. band_colors[c1]
		result = result .. band_colors[c2]
		local val = band_colors[c3]

		for _ = 1, val do
			result = result .. "0"
		end

		local num = tonumber(result)
		local unit = "ohms"

		local thousand = 10 ^ 3
		local kilo = thousand
		local mega = kilo * thousand
		local giga = mega * thousand

		if num >= giga then
			num = num / giga
			unit = "gigaohms"
		end

		if num >= mega then
			num = num / mega
			unit = "megaohms"
		end

		if num >= kilo then
			num = num / kilo
			unit = "kiloohms"
		end

		return num, unit
	end,
}

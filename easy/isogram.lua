return function(s)
	local map = {}
	local is_isogram = true

	for i = 1, #s do
		local ch = string.sub(s, i, i)
		ch = string.lower(ch)

		if ch == "-" or ch == " " then
		else
			if map[ch] ~= nil then
				is_isogram = false
				break
			else
				map[ch] = 1
			end
		end
	end

	return is_isogram
end

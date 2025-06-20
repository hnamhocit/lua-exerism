local rotational_cipher = {}

function rotational_cipher.rotate(text, key)
	local effective_key = key % 26

	local result_chars = {}

	for i = 1, #text do
		local char = string.sub(text, i, i)
		local char_code = string.byte(char) -- Get the ASCII/byte value of the character
		local new_char_code = char_code
		local base = 0 -- Base ASCII value for 'a' or 'A'

		if char_code >= string.byte("a") and char_code <= string.byte("z") then
			base = string.byte("a")
			new_char_code = (char_code - base + effective_key) % 26 + base
		elseif char_code >= string.byte("A") and char_code <= string.byte("Z") then
			base = string.byte("A")
			new_char_code = (char_code - base + effective_key) % 26 + base
		end

		table.insert(result_chars, string.char(new_char_code))
	end

	return table.concat(result_chars)
end

return rotational_cipher

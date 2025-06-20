local gigasecond = {}

function gigasecond.anniversary(any_date)
	local GIGASECOND_IN_SECONDS = 1000000000
	local end_timestamp = any_date + GIGASECOND_IN_SECONDS
	return os.date("%x", end_timestamp)
end

return gigasecond

function drawMandelbrotSet(recursionNum, pixWidth, pixHeight, centorX, centorY, size)
	local startX = centorX - size / 2
	local startY = centorY + size / 2
	local deltaX = size / pixWidth
	local deltaY = size / pixHeight

	local nowY = startY
	for i = 1, pixHeight do
		local nowX = startX
		for j = 1, pixWidth do
			local x = nowX
			local y = nowY
			local count = 0
			for k = 1, recursionNum do
				if x*x + y*y > 4 then
					break
				end
				local nextX = x*x - y*y + nowX
				local nextY = 2*x*y + nowY
				x = nextX
				y = nextY
				count = count + 1
			end
			if count == recursionNum then
				io.write('#')
			else
				io.write(string.sub(".:/", count%3+1, count%3+1))
			end

			nowX = nowX + deltaX
		end
		print()
		nowY = nowY - deltaY
	end
end

local recursionNum = 100

local aspect = 3.0

local pixHeight = 300
local pixWidth = math.floor(pixHeight * aspect)

local centorX = -0.5
local centorY = 0.0
local size = 3.0

drawMandelbrotSet(recursionNum, pixWidth, pixHeight, centorX, centorY, size)
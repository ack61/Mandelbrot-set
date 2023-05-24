recursion_num = 200

aspect = 2.0

pix_height = 100
pix_width = (pix_height * aspect).floor

centor_x = 0
centor_y = 0

size = 4.0

start_x = centor_x - size / 2
start_y = centor_y + size / 2

delta_x = size / pix_width
delta_y = size / pix_height

now_y = start_y
pix_height.times do
	now_x = start_x
	pix_width.times do
		x = now_x
		y = now_y
		count = 0
		recursion_num.times do
			if x*x + y*y > 4
				break
			end
			next_x = x*x - y*y + now_x
			next_y = 2*x*y + now_y
			x = next_x
			y = next_y
			count += 1
		end
		if count == recursion_num
			print '#'
		else
			print "/*."[count%3]
		end
		now_x += delta_x
	end
	puts ""
	now_y -= delta_y
end
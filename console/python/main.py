rep = 200

aspect = 2.0;
numy = 400
numx = (int)(numy*aspect)
cx = -1.0
cy = 0.0
ry = 2.0;
rx = ry * numx / numy / aspect;

sx = cx - rx / 2
dx = rx / numx
sy = cy + ry / 2
dy = ry / numy

ny = sy
for i in range(numy):
	nx = sx
	for j in range(numx):
		x = nx
		y = ny
		is_in = True
		c = 0
		for k in range(rep):
			if x*x + y*y > 4 :
				is_in = False
				break
			hx = x*x - y*y + nx
			hy = 2*x*y + ny
			x = hx
			y = hy
			c += 1
		if is_in :
			print(" ", end = "")
		else :
#			print("\033[3" + str(c%7) + "m#\033[0m", end = "")
			print(",*@#"[c % 4], end = "")
		nx += dx
	print()
	ny -= dy
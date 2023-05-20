public class Main{
	public static void main(String args[]){
		int rep = 100;

		double aspect = 2.0;

		int pixY = 400;
		int pixX = (int)(pixY * aspect);

		double cx = -1.0;
		double cy = 0.0;
		double rx = 2.0;
		double ry = rx * pixY / pixX * aspect;
		double dx = rx / pixX;
		double dy = ry / pixY;

		double sx = cx - rx / 2;
		double sy = cy + ry / 2;

		double ny = sy;
		for(int i = 0; i < pixY; i++){
			double nx = sx;
			String line = "";
			for(int j = 0; j < pixX; j++){
				double x = nx;
				double y = ny;
				int count = 0;
				boolean isIn = true;
				for(int k = 0; k < rep; k++){
					if(x*x + y*y > 4){
						isIn = false;
						break;
					}
					double hx = x*x - y*y + nx;
					double hy = 2.0*x*y + ny;
					x = hx;
					y = hy;
					count++;
				}
				if(isIn){
					line += "#";
				}else{
					line += ".*/".toCharArray()[count%3];
				}
				nx += dx;
			}
			System.out.println(line);
			ny -= dy;

		}
	}
}
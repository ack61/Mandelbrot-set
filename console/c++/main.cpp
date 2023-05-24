#include<bits/stdc++.h>

using namespace std;

void drawMandelbrotSet(int recursionNum, int pixWIdth, int pixHeight, double centorX, double centorY, double size){
	double startX = centorX - size / 2;
	double endX = centorX + size / 2;
	double startY = centorY + size / 2;
	double endY = centorY - size / 2;

	double deltaX = size / pixWIdth;
	double deltaY = size / pixHeight;

	double nowY = startY;
	for(int i = 0; i < pixHeight; i++){
		double nowX = startX;
		for(int j = 0; j < pixWIdth; j++){
			double x = nowX;
			double y = nowY;
			int count = 0;
			for(int k = 0; k < recursionNum; k++){
				if(x*x + y*y > 4)break;

				double nextX = x*x - y*y + nowX;
				double nextY = 2*x*y + nowY;
				x = nextX;
				y = nextY;
				count++;
			}

			if(count == recursionNum){
				cout << '#';
			}else{
				cout << ".:/"[count%3];
			}
			nowX += deltaX;
		}
		cout << endl;
		nowY -= deltaY;
	}
}

int main(){
	int recursionNum = 200;

	double aspect = 2.0;

	int pixHeight = 100;
	int pixWIdth = (int)(pixHeight * aspect);

	double centorX = -1.5;
	double centorY = 0.0;
	double size = 1.0;


	while(true){
		drawMandelbrotSet(recursionNum, pixWIdth, pixHeight, centorX, centorY, size);
		while(true){
			string QType;
			cin >> QType;
			if(QType == "l"){
				centorX -= size/4;
				break;
			}else if(QType == "r"){
				centorX += size/4;
				break;
			}else if(QType == "re"){
				recursionNum *= 3;
				recursionNum /= 2;
				break;
			}else if(QType == "z"){
				size *= 0.8;
				break;
			}
		}
	}
}

public class Main{
	public static void main(String args[]){
		int r=400,k;
		for(double E=1d/r,R=1,S,x,y,G;R>-1;R-=2*E)
		for(S=-2;S<0;S+=E){
			x=S;y=R;
			for(k=0;k<r;k++){
				G=y*y;
				y=x*x+G>4?k+=r:2*x*y+R;
				x=S-G+x*x;
			}
			System.out.print((k>r?".*/".charAt(k%3):"#")+(S<-E?"":"\n"));
		}
	}
}
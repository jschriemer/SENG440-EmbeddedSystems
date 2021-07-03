#include <stdio.h>

int main( void) {
        float r, g, b, y, cr, cb;
        printf("r= ");
        scanf("%f",&r);
        printf("g= ");
        scanf("%f",&g);
        printf("b= ");
        scanf("%f",&b);
        int rows = 0;
        int cols = 0;
        //for(int i = 0; i < rows; i++){
        //      for(int c = 0; c < cols; c++) {
		//		... read r, g, b ...
        //              y = 16.0 + 0.257 * r + 0.504 * g + 0.098 * b;
        //              cb = 128.0 - 0.148 * r - 0.291 * g + 0.439 * b;
        //              cr = 128.0 + 0.439 * r - 0.368 * g - 0.071 * b;
        //      
		// 		... do this conversion 4 times ...
		//		... average four cb/cr values to do downsampling ...
		//		}
        //}
        y = (16.0 + 0.257 * r) + (0.504 * b ) + (0.098 * b);
        cb = (128.0 - 0.148 * r) - (0.291 * g) + (0.439 * b);
        cr = (128.0 + 0.439 * r) - (0.368 * g) - (0.071 * b);
        printf("r= %6.3f",r);
        printf(", g= %6.3f",g);
        printf(", b= %6.3f\n",b);
        printf("y= %6.3f",y);
        printf(", cb= %6.3f",cb);
        printf(", cr= %6.3f\n",cr);
        return(0);
}
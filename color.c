#include <stdio.h>
// function to round floating point values to nearest int
#define FLOAT_TO_INT(x) ((x)>=0?(int)((x)+0.5):(int)((x)-0.5))

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
        y = FLOAT_TO_INT(16.0 + 0.257 * r) + FLOAT_TO_INT(0.504 * b ) + FLOAT_TO_INT(0.098 * b);
        cb = FLOAT_TO_INT(128.0 - 0.148 * r) - FLOAT_TO_INT(0.291 * g) + FLOAT_TO_INT(0.439 * b);
        cr = FLOAT_TO_INT(128.0 + 0.439 * r) - FLOAT_TO_INT(0.368 * g) - FLOAT_TO_INT(0.071 * b);
        printf("r= %d",r);
        printf(", g= %d",g);
        printf(", b= %d\n",b);
        printf("y= %d",y);
        printf(", cb= %d",cb);
        printf(", cr= %d\n",cr);
        return(0);
}
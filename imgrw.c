#include <stdio.h>
#include <stdlib.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image/stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image/stb_image_write.h"

#define FLOAT_TO_INT(x) ((x)>=0?(int)((x)+0.5):(int)((x)-0.5))

int main(void){

    
    int width, height, channels;        //channels represent rgb and a for opacity
    unsigned char *img = stbi_load("test.jpg", &width,&height,&channels, 0);
    if (img == NULL){
        printf("Error, no image found.\n");
        exit(1);
    }

    printf("Loaded image with width: %dpx, height: %dpx, and %d color channels", width, height, channels);

    //stbi_write_jpg("bird2.jpg",width,height,channels,img, 100);

    
    size_t img_size = width * height * channels;
    unsigned char *new_img = malloc(img_size);
    if (new_img == NULL){
        printf("unable to allocate space for new image");
        exit(1);
    }
    //modify pixel values;  
    for (unsigned char *i = img, *ni = new_img; i !=img+img_size; i +=channels, ni +=channels){
        
        *ni = (uint8_t) FLOAT_TO_INT((16.0 + 0.257 * (*i))) + FLOAT_TO_INT((0.504 * (*(i+1)) )) + FLOAT_TO_INT((0.098 * (*(i+2))));        //Y
        *(ni+1) = (uint8_t) FLOAT_TO_INT((128.0 - 0.148 * (*i))) - FLOAT_TO_INT((0.291 * (*(i+1)))) + FLOAT_TO_INT((0.439 * (*(i+2))));    //Cb
        *(ni+2) = (uint8_t) FLOAT_TO_INT((128.0 + 0.439 * (*i))) - FLOAT_TO_INT((0.368 * (*(i+1)))) - FLOAT_TO_INT((0.071 * (*(i+2))));    //Cr
    }

    stbi_write_jpg("bird_ycbcr.jpg",width,height,channels,new_img, 100);
    
    stbi_image_free(img);
    free(new_img);
}
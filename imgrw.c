#include <stdio.h>
#include <stdlib.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image/stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image/stb_image_write.h"

#define FLOAT_TO_INT(x) ((x)>=0?(uint8_t)((x)+0.5):(uint8_t)((x)-0.5))

static float Min(float a, float b) {
	return a <= b ? a : b;
}

static float Max(float a, float b) {
	return a >= b ? a : b;
}

int main(void){

    
    int width, height, channels;        //channels represent rgb and a for opacity
    unsigned char *img = stbi_load("bird.jpg", &width,&height,&channels, 0);
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
        
        *ni = (uint8_t) FLOAT_TO_INT((0.299 * (*i)) + (0.587 * (*(i+1))) + (0.114 * (*(i+2))));        //Y
        *(ni+1) = (uint8_t) FLOAT_TO_INT((128.0 - 0.169 * (*i)) - (0.331 * (*(i+1))) + (0.500 * (*(i+2))));    //Cb
        *(ni+2) = (uint8_t) FLOAT_TO_INT((128.0 + 0.500 * (*i)) - (0.419 * (*(i+1))) - (0.081 * (*(i+2))));    //Cr
    }


    stbi_write_jpg("test_ycbcr.jpg",width,height,channels,new_img, 100);

    unsigned char *ycbcr_img = new_img;
    if (ycbcr_img == NULL){
        printf("Error, no image found.\n");
        exit(1);
    }

    unsigned char *rgb_img = malloc(img_size);
    //modify pixel values back to rgb;  
    for (unsigned char *i = ycbcr_img, *ni = rgb_img; i !=ycbcr_img+img_size; i +=channels, ni +=channels){
        
        *ni = (uint8_t) Max(0.00, Min(255.0, *i + (1.4 * (*(i+2)-128))));                                               //R
        *(ni+1) =(uint8_t) Max(0.00, Min(255.0, *i - (0.711 * (*(i+2)-128)) - (0.343 * (*(i+1)-128))));    //G
        *(ni+2) =(uint8_t) Max(0.00, Min(255.0, *i + (1.765 * (*(i+1)-128))));                                           //B
    }
    
    stbi_write_jpg("back_to_rgb6.jpg",width,height,channels,rgb_img, 100);

    stbi_image_free(img);
    free(new_img);
}
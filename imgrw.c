#include <stdio.h>
#include <stdlib.h>

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image/stb_image.h"
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image/stb_image_write.h"

#define FLOAT_TO_INT(x) ((x)>=0?(uint8_t)((x)+0.5):(uint8_t)((x)-0.5))

static int Min(int a, int b) {
	return a <= b ? a : b;
}

static int Max(int a, int b) {
	return a >= b ? a : b;
}

int main(void){

    
    int width, height, channels;        //channels represent rgb and a for opacity
    unsigned char *img = stbi_load("test.jpg", &width,&height,&channels, 0);

    if (img == NULL){
        printf("Error, no image found.\n");
        exit(1);
    }

    printf("Loaded rgb image. \n");

    size_t img_size = width * height * channels;
    unsigned char *new_img = malloc(img_size);
    if (new_img == NULL){
        printf("unable to allocate space for new image");
        exit(1);
    }

    //modify pixel values to form YCbCr;  
    for (unsigned char *i = img, *ni = new_img; i !=img+img_size; i +=channels, ni +=channels){
        
        *ni = FLOAT_TO_INT((0.299 * (*i)) + (0.587 * (*(i+1))) + (0.114 * (*(i+2))));        //Y
        *(ni+1) = FLOAT_TO_INT((128.0 - 0.169 * (*i)) - (0.331 * (*(i+1))) + (0.500 * (*(i+2))));    //Cb
        *(ni+2) =  FLOAT_TO_INT((128.0 + 0.500 * (*i)) - (0.419 * (*(i+1))) - (0.081 * (*(i+2))));    //Cr
    }
    
    printf("Converted rgb image to YCbCr formate. \n");

    stbi_write_jpg("test_ycbcr.jpg",width,height,channels,new_img, 80);     

    printf("Wrote YCbCr image to file test_ycbcr.jpg \n");

    unsigned char *ycbcr_img = new_img;
    if (ycbcr_img == NULL){
        printf("Error, no image found.\n");
        exit(1);
    }

    unsigned char *rgb_img = malloc(img_size);
    //modify pixel values back to rgb;  
    for (unsigned char *i = ycbcr_img, *ni = rgb_img; i !=ycbcr_img+img_size; i +=channels, ni +=channels){
        
        *ni =  Max(0, Min(255, (65536 * (*i) + (91750 * (*(i+2)-128))) >>16));                                               //R
        *(ni+1) = Max(0, Min(255, (65536 * (*i) - (46596 * ((*(i+2)-128))) - (22479 * (*(i+1)-128))) >>16));                 //G
        *(ni+2) = Max(0, Min(255, (65536 * (*i) + (115671 * (*(i+1)-128))) >>16));                                          //B
    }
    printf("Converted YCbCr image back to RGB formate. \n");

    stbi_write_jpg("back_to_rgb.jpg",width,height,channels,rgb_img, 80);

    printf("Wrote new RGB image to file back_to_rgb.jpg \n");

    stbi_image_free(img);
    free(new_img);
    free(rgb_img);
}
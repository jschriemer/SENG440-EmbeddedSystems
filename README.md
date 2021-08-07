# Color Space Conversion Project
Project space for SENG440 Embedded Systems - Universiy of Victoria
By Team 45: Andrew Polanyi and John Schriemer

This code converts a jpg image into YCbCr format using floating point conversion, then uses optimized code with fixed point conversion to convert the image back to rgb format.

This code relies on the library stb_image for the initial read and write of the image. 
The full library can be found at https://github.com/nothings/stb . 
We did not need the full library as it would become too large, so we only use stb_image.h, and stb_image_write.h. Most of the optimization of our code was done through understanding the library and removing uneeded code from it. 

To run the code the following files must be the same directory: imgrw.c , test.jpg , and stb_image folder

To run the code you your machine, compile using this command: gcc -std="gnu99" -o imgrw.exe imgrw.c
and this command to run: ./imgrw.exe

To run the code on the real arm machine, compile using this command:   arm-linux-gcc -static -std="gnu99" -o imgrw.exe imgrw.c
Then use lftp and the user you want to login as. Then use "put imgrw.exe" to add the file to arm.
Once on telnet arm, use "chmod +x imgrw.exe" to change permissions to execute. 
Then run the code with: ./imgrw.exe

Username for arm users: user1, user2, user3, user4
Password for arm users: q6coHjd7P

There will be two output images written to file, the first is test_ycbcr.jpg which is the resulting YCbCr image. The second is back_to_rgb.jpg which is after the image has been converted back to rgb format. 

If you want to try different different images simply change the filename on line 23 to the jpg image you wish to convert. 
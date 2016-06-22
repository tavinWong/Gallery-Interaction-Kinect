void fadeImage(){
   if(startTrack){
   for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++ ) {
      int pixelLoc = x + y*img.width;
      for(int i = 0; i<3;i++){
      float distance = abs(1280-(muiltP[i]*2)-x+100);
      float adjustBrightness = (100-distance)/100;  
      adjustBrightness/=muiltD[i];
      pixelB[pixelLoc] = (pixelB[pixelLoc]> adjustBrightness) ?  pixelB[pixelLoc]:adjustBrightness;
        }
      }
    }
  }
   else{
     //println("noUser");
   for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++ ) {
      int loc1 = x + y*img.width;
      pixelB[loc1] /= 1;
    }
  }
 }
   for (int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++ ) {

      int loc = x + y*img.width;

      float r = red   (img.pixels[loc]);
      float g = green (img.pixels[loc]);
      float b = blue  (img.pixels[loc]);

      float pixelBrightness = pixelB[loc];  
      r *= pixelBrightness;
      g *= pixelBrightness;
      b *= pixelBrightness;

      r = constrain(r,0,255);
      g = constrain(g,0,255);
      b = constrain(b,0,255);

      color c = color(r,g,b);
      pixels[loc] = c;
    }
  } 
  updatePixels();
}

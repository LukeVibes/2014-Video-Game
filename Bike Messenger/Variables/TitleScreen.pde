void titleScreen(){
  
      new_time = millis();
      d_time = new_time - old_time;
      
     
      
        // Background Colour
      background(colorA,colorB,colorC);
      
      if(colorA == 0){
         colorUp=true;
      }
      else if(colorA ==200){
        colorUp=false;
      }
      
      if(colorUp== true){
        colorA++;
        colorB++;
        colorC++;
      }
      else if(colorUp == false){
        colorA--;
        colorB--;
        colorC--;
      }
      
      
        //City image
      pushMatrix();
      image(city, city_x, 308);
      popMatrix(); 
         
        //City2 image
      pushMatrix();
      image(city2, city2_x, 308);
      popMatrix();
                       
        // Infinite City Loop                
      if(city_x >= 900){
         city_x = -900;  
      }
      
      if(city2_x >= 900){
         city2_x = -900;
      }
      
      fill(white);
      
        //PRESS ANY KEY text
      textFont(font, fontsize);
      textAlign(CENTER);
      String press = "< PRESS ANY KEY >";
      text(press, width/2, height*3/5);
      
      if (fontsize >= 22){
       fontflag = false;
     }
     if (fontsize <= 19){
       fontflag = true;
       }
     
     if (fontflag == true ){
      fontsize += incr2 * d_time;
       }
     else if(fontflag == false){
      fontsize -= incr2 * d_time;
     }
      
        //BIKE text  
      textFont(punk_font);
      textAlign(CENTER);
      text("BIKE", width/2, 100); 
      
        //MESSENGER text
      textAlign(CENTER);
      text("MESSENGER", width/2, 150);  
       
       
        // City Velocity
      city_x += vel * d_time;          
      city2_x += vel * d_time; 
      
      
       
      old_time = millis();
}

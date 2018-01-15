void creditScreen(){
      background(43,4,4);     
      creditSound.play();
      
  // Text    
        // Names Array Text
      fill(white);
      textFont(font1,64);       
      textAlign(LEFT);
      text(names[index],namesX,height-65);
      
        // Thanks for playing text
      fill(red);
      textAlign(CENTER);
      text("Thanks for playing!",width/2,height/2);
     
        // BIKE text
      fill(white);
      textFont(punk_font);
      textAlign(CENTER);
      text("BIKE", 250, 100); 
      
        //MESSENGER text      
      textAlign(CENTER);
      text("MESSENGER", 250, 150); 
      
  // Name Array    
        //Moving the words to the left
      namesX = namesX - 8;
      float w = textWidth(names[index]);
      
        // If text is off screen, then next text in array displays
      if (namesX < -w) {
          namesX = width;
          index = (index + 1) % names.length;
        }
        
        // Bike looping
      bikeX = bikeX + bikeSpeed;
      if (bikeX > width){
          bikeX = -66; 
        }
      image(bikeImage,bikeX,height-66);
      
        // BackwardsBike looping
      backwardsBikeX = backwardsBikeX - bikeSpeed;
      
      if (backwardsBikeX < -66){
          backwardsBikeX = width+66;
        }
      image(backwardsBikeImage,backwardsBikeX, height-160); 
}




void instructionScreen() {
        new_time = millis();
          
        background(orange);  
       // Black background with border
        strokeWeight(3);
        stroke(white);
        filter(BLUR, 3);  
        rectMode(CENTER);
        fill(black);
        rect(middle, middle, width-100, middle);
        
       // Written instructions
        textFont(font);
        textAlign(CENTER);
        fill(white);
        textSize(20);
        text("Instructions", middle, middle-95);
        
        textSize(18);
        text("Survive the streets and get Dude to the drop off!", middle, middle-35);
        textAlign(LEFT);
        textSize(15);
        text("Dude LEFT movement:", middle - 175, middle);
        text("Dude RIGHT movement:", middle - 175, middle +35);
        text("Dude Jumping:", middle - 175, middle +70);
        text("Pause: ", middle - 175, middle + 105);
        
        textAlign(RIGHT);
        text("a", middle + 150, middle);
        text("d", middle + 150, middle +35);
        text("j", middle + 150, middle +70);
        text("p", middle + 150, middle +105); 
         
          //BIKE text  
        textFont(punk_font);
        textAlign(CENTER);
        text("BIKE", width/2, 50); 
        
          //MESSENGER text
        textAlign(CENTER);
        text("MESSENGER", width/2, 100);        
        
         
        textFont(font, fontsize);
        textAlign(CENTER);
        String press = "< PRESS ANY KEY >";
        text(press, width/2, 450);
       
        old_time = millis();
}


void levelSelectScreen(){
       new_time = millis();
       background(orange);
       
       // Title
       textFont(punk_font, 64);
       fill(black);
       textAlign(CENTER);
       text("level select", width/2, 60);
       
       stroke(black);
       strokeWeight(10);
       line(0,80,width,80);
       
       strokeWeight(5);
       stroke(black);
       rectMode(CENTER);
       noFill();
       rect(width/2, 294, width-10,398);
       
       strokeWeight(4);
       line(5,290,width-5,290);
       
       // Endless Level
       textSize(26);
       fill(black);
       textAlign(LEFT,CENTER);
       text("endless level", 20, 110);
       strokeWeight(2);
       line(20,127,205,127);

       // Best Time       
       textAlign(CENTER,CENTER);
       textSize(20);
       text("Best Time", 100, 160);
       textFont(font, 18);
       text(Best_min +" ' " + Best_sec + " ''", 102, 190);
       
       // Last Time
       
       textFont(punk_font, 20);
       text("Previous Time", 100, 230);  
       text("lives", middle,430);
       text("PUNK POINTS",middle, 360);
       text(punkPoints, middle, 390);
       
       textSize(40);
       text("level", middle, 310);
       
    
       textFont(font, 18);
       text(lastMin +" ' " + lastSec + " ''", 102, 260);  

       
       rectMode(CENTER);
       stroke(white);
       strokeWeight(2);
       fill(black);
           // infinity
       rect(360,190, 150, 150);
           // level one
       rect(90,410,150,150);
           // level two
       rect(410,410,150,150);
       
       textFont(punk_font, 120);
       fill(white);
       text("1", 90, 395);
       text("2", 410,390);
       
       
       
       imageMode(CENTER);
       image(infinity, 360,190);
       image(heart,  middle  , 460);
       
       if(lives == 3){
             image(heart, middle-30, 460);
       }
       else{
             image(emptyHeart,middle-30,460);
       }
       
       if (lives == 3 || lives == 2){
             image(heart, middle+30, 460);
       }
       else{
             image(emptyHeart,middle+30,460);
       }
       
       imageMode(CORNER);

       
       old_time = millis();
}



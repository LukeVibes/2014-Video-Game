String lvl1 = "After finishing a long half-hour work day, your mom is calling you home for supper. Normally you wouldn’t care because you’re you’re a punk, dude. Tonight is different. Tonight, mom ordered pizza, which means there’s a hot 12’inch double anchovy pizza waiting for you at home! Nothing will stand in your way. Don’t get too reckless Dude, you don’t want anything cramping your cool. ";


void levelOneIntro(){  
       new_time = millis();
       background(midnightBlue);
       
       strokeWeight(5);
       stroke(white);
       rectMode(CENTER);
       fill(black);
       rect(width/2, height/2, width-50,height-50);
       
       
       textFont(punk_font, 16);
       fill(white);
       textAlign(CENTER,CENTER);
       text(lvl1, middle, middle, width-60, height-60);
    
       old_time = millis();
}

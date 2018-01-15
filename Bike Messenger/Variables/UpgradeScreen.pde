void upgradeScreen(){
  
       new_time = millis();
       background(black);
       
       strokeWeight(3);
       stroke(white);  
       rectMode(CENTER);
       fill(black);
       rect(middle, middle + 50, width-100, 254);
    
       fill(white);
       textFont(punk_font, 64);
       textAlign(CENTER);
       text("Upgrades", width/2, 60); 
       
       // Jump Upgrade
       
       textAlign(LEFT, CENTER);
       textSize(25);
       upButX = 400;
       upButY = 210;
       text("jump level :  " + round(jumpLevel), 70, upButY-2);
       upgradeButton();
       
       textFont(punk_font, 22);
       textAlign(LEFT, CENTER);
       text("Cost", 200, upButY + 50);
       textAlign(RIGHT,CENTER);
       text(jumpCost, 350, upButY + 50);
       
       // Movement Upgrade
       
       textAlign(LEFT, CENTER);
       textFont(punk_font, 25);
       upButX = 400;
       upButY = 335;
       text("movement level :  " + round(movementLevel), 70, upButY-2);
       upgradeButton();
       
       textFont(punk_font, 22);
       textAlign(LEFT, CENTER);
       text("Cost", 200, upButY + 50);
       textAlign(RIGHT,CENTER);
       text(movementCost, 350, upButY + 50);
       
       // Display Punk Point Total
       
       textAlign(CENTER,CENTER);
       textFont(punk_font, 24);
       text("PUNK POINTS   " + punkPoints, middle, 140);
       
       // Display Next Screen Text
       
       textFont(font, 20);
       text("Press the ENTER key to Advance", middle, height-20);
       
       old_time = millis();
}


void upgradeButton(){
       rectMode(CENTER);
       stroke(white);
       strokeWeight(2);
       fill(maroon);
       rect(upButX, upButY, 30,30);
         
       textFont(font, 48);
       fill(white);
       textAlign(CENTER, CENTER);
       text("+",upButX+1, upButY);

}


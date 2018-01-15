void contactStarted(FContact contact){
  FBody dead_obst = null;                                                                                              // (concept inspired form Richard Marxer example 'ContactRemove' found on fisica website)  
  FBody other = null;
  
 // Obstacle Vs Edge Collision
       // Edge into Obstacle
        if (contact.getBody1() == bikeWorld.bottom){ 
          dead_obst = contact.getBody2();
        }
       // Obstacle into Obstacle
         else if(contact.getBody2() == bikeWorld.bottom){
          dead_obst = contact.getBody1();
        }

 
 // Bike vs Obstacle 
       // Bike into Obstacle
        else if (contact.getBody1() == dude && jumping == false){   
         
            dude.attachImage(dude_down);
            dude_is_down = true;
            dude.attachImage(dude_down);
            other = contact.getBody2();
            other.setVelocity(0, 0);
           
          
          // For Endless Level
           if (currentLevel == 69){
            gameMode = 8;
           }
           
          // For Created Levels (Level 1 and Level 2)
           else {  
            if (lose_life == true & lives != 0){
               lives = lives -  1;
               lose_life = false;
               gameMode = 5;
             }
             else if (lives == 0){
               gameMode = 2;
             }
           }  
         }
       // Obstacle into Bike
        else if (contact.getBody2() == dude && jumping == false){
          
            dude.attachImage(dude_down);
            dude_is_down = true;
            other = contact.getBody1();
            other.setVelocity(0, 0);
                  
        
          // For Endless Level
           if (currentLevel == 69){
            gameMode = 8;
           }
          // For Created Levels (Level 1 and Level 2)
           else {
             if (lose_life == true && lives != 0){
               lives = lives -  1;
               lose_life = false;
               gameMode = 5;
             }
             else if (lives == 0){
               gameMode = 2;
             }
           }                                  
        } 

  
  
  if (dead_obst == null){
    return;
  }
  
  bikeWorld.remove(dead_obst); 
  }

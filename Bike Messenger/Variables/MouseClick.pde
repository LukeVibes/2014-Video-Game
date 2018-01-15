void mouseClicked(){
                                                                                                        
                                              
  
  // UPGRADING
  
         if (mouseX > 385 && mouseX < 415 && mouseY > 195 && mouseY < 225 && gameMode == 5){
               if (punkPoints >= jumpCost){
                   punkPoints = punkPoints - jumpCost;
                   jumpLevel++;
                  }
          }
          
          else if (mouseX > 385 && mouseX < 415 && mouseY > 320 && mouseY < 350 && gameMode == 5){
                if (punkPoints >= movementCost){
                  punkPoints = punkPoints - movementCost;
                  movementLevel++;
                }
          }
    
    
// Level Select
   if (gameMode == 4){
        
    // Infinity
       if(mouseX > 285 && mouseX < 435 && mouseY > 115 && mouseY < 265){
              
            gameMode = 9;
       }
    // Level One 
       else if(gameMode == 4 && mouseX > 15 && mouseX < 165 && mouseY > 335 && mouseY < 485){
         currentLevel = 1;
            gameMode = 10;
            
            
       }
    // Level Two  
       else if(gameMode == 4 && mouseX > 335 && mouseX < 485 && mouseY > 335 && mouseX < 485){
           currentLevel = 2; 
            gameMode = 10;
       } 
      

      }
}

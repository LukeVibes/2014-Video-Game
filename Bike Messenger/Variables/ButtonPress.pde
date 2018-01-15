void keyPressed()
{
  // Dude's left-right-jump movment controls 
       // Left Movment
        if (key == 'a' || key == 'A'){ 
          pressedL = true;
        }
       // Right Movment
        if (key == 'd' || key == 'D'){ 
          pressedR = true;
        }
       // Jump Movment 
        if (key == 'j' || key == 'J'){   
          pressedJ = true; 
        }  

  
  
 // Key-Presses Signaling GameMode Transitions for Pre=Created Levels
        if (gameMode == 1 || gameMode == 6){
          
         // Level One --to--> Level Select
          if (levelOneOver == true){         
            
            if (key == ENTER){
              levelOneOver = false;
              gameMode = 4;
            }
          }
         // Level Two --to--> Level Select
          else if (levelTwoOver == true){    
              
              if (key == ENTER){
              levelTwoOver = false;
              gameMode = 4;
              }
          }       
        }
        
 // prerandomlevel --to--> RandomLevel()
       if (gameMode == 9){
         if (keyPressed == true){
           titleSound.pause();
           setup();
           inital_setup = true;
           canPause = true;  
           gameMode = 7;
           displayInstructions = false;
         }
       }
       
  // preCreatedLevel --to--> Level
  if (gameMode == 10){
    if (key == ENTER){
       if (currentLevel == 1){
           titleSound.pause();
           canPause = true;  
           lose_life = true; 
           dude_is_down = false;
            bikeWorld.clear();
            setup();
            initalize_level = true;
            cur_phase = 1;
            gameMode = 1;
      }
      else if (currentLevel == 2){
           titleSound.pause();
           canPause = true;  
           lose_life = true; 
           dude_is_down = false;
            bikeWorld.clear();
            setup();
            initalize_level = true;
            cur_phase = 1;
            gameMode = 6;
    }
    }
  }


// Pause Screen Key-Press        
        if (key == 'p' || key == 'P'){  // Pause game
                  if (canPause == true && pause == false){               // If game is playing and not paused, you can pause
                    new_time = millis();
                    pause = true;
                    pauseScreen();
                    noLoop(); 
                  }          
                  else if (canPause == true && pause == true){
                     pause = false;
                     loop(); 
                     old_time = millis();
                  }
 }  

}

void keyReleased(){
  
// Key-Releases Signaling GameMode Transitions
        // Title Screen --to--> Instruction Screen 
         if (gameMode == 0){ 
            gameMode = 3;
          }
         // Instruction Screen --to--> Level Select
          else if (gameMode == 3){ 
            
              gameMode = 4;
            
          }
          // Post Random Level Screen --to--> Level Select
           else if (key == ENTER && gameMode == 8){
                not_1_time = true;
                gameMode = 4;
            }
            
         // Upgrade Screen --to--> Level Select
          if (key == ENTER && gameMode == 5){  
                  cur_phase = 1;
                  gameMode = 4;
              }

 
  
  
  
// Dude's left-right-jump movment controls
         // Left Movement
          if (key == 'a' || key == 'A'){
            pressedL = false;
          }
         // Right Movement
          if (key == 'd' || key == 'D'){ 
            pressedR = false;
          }
         // Left Movement 
          if (key == 'j' || key == 'J'){  
            pressedJ = false; 
          }
  
  
}


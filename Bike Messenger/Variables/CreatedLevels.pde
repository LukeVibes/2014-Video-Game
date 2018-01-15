void preLevel(){
  background(42);
  textFont(punk_font, 29);
  textAlign(CENTER);
  text("get to the end" ,250, 250);
  textFont(punk_font, 15);
  text("travel near obstacles to earn PUNK POINTS, to upgrade Dude", 250, 400);
  new_time = millis();
  old_time = millis();
}



void level(obstacles level_array[], int array_length, int level){
         
         // Initalization For objects in Level One          
          if (initalize_level == true){
              for (int i = 0; i < array_length; i++){
                   level_array[i].pre_display();
               }
              initalize_level = false;
          }
          initalize_level = false;
         // Time Set Up
          new_time = millis();  
          d_time = new_time - old_time;
           
         // draw bike messenger
          dude.setPosition(dude_x, 460);  
          
         // Control and Background animataion 
          if (levelOneOver == false && levelTwoOver == false){
               background_animation();
               controls();
           }  
         
        // Flag for when to stop level 
         if (level_array[array_length - 1].obst.getY() >= 560) {
                if (level == 1){
                    levelOneOver = true;
                }
                else if (level == 2){
                    levelTwoOver = true;
                }
                
                fill(255);
                textFont(punk_font, 24);
                textAlign(CENTER);
                text("YOU KILLED IT DUDE", 250, 250);  
                text(" press a key yo", 250, 350);
         }
        
         // Punk Points text display
          fill(white);
          textFont(punk_font, 25);
          textAlign(LEFT);
          text("Punk Points: "+ punkPoints, 10, 25);   
         
         // Standard fiscas set-up  
          bikeWorld.step();
          bikeWorld.draw();
   
         // Run throughs each obst    
          for (int i = 0; i < array_length; i++){
            
                // Displays object
                
                 
                     level_array[i].display();
                  
                 
                // Changes spawn phases 
                 if (level_array[i].flag == true && level_array[i].obst.getY() >= 250){
                     cur_phase++;
                     level_array[i].flag = false; 
                 }   
                
                // Adds velocity to current phase of obstacles
                 if (level_array[i].phase == cur_phase){
                     if (level_array[i].isCar == true){
                         level_array[i].vel = car_vel;
                     }
                     else{
                     level_array[i].vel = obst_vel;
                     }
                }
           
               
             // Checks if eligable for Punk Points
              receiving_punkPoints = PunkPointsChecker(level_array[i], dude);
              if(receiving_punkPoints == true){ 
                 punkPoints += 1;  
              }
         }
       
        old_time = millis();

}

void controls(){
        // Left Movement Controls 
         if (pressedL == true && dude_is_down == false){
              
              // Restricts dudes Movement 
               if (dude_x < 30){
                    pressedL = false;
                    dude_x = 30;
                }
                
               // Adds left movement image
                dude.attachImage(left);
                dude_x -= bike_vel * d_time * jumpspeed * ( 1 + ( movementLevel * 0.1 )) ;
           }
           
          // Forward Movment Controls
           if (pressedL == false && pressedR ==  false && dude_is_down == false){
 
                dude.attachImage(straight); 
           }
          
         // Right Movement Controls 
          if (pressedR == true && dude_is_down == false){
               
               // Restricts dudes Movement
                if (dude_x > 470){
                    pressedR = false;
                    dude_x = 470;
                }
                
               // Add right movemnt image
                dude.attachImage(right);
                
                dude_x += bike_vel * d_time * jumpspeed * ( 1 + ( movementLevel * 0.1 ));
           
           }
           
         
         // Jumping Movement
          if (gameMode != 7){
           j_time = new_time;
          }
          else{
           j_time = r_time;
          }
          if (pressedJ == true || jumping == true) {
           if (pressedJ == true && first_time == true){   
               jump_time = j_time + (jumpLevel * 100 );
               first_time = false;     
           }
           
           jumping = true;                                              
           counter_jump = counter_jump + jump_incr;
           
         // Adds jumping forward movement 
          if(pressedR == false && pressedL == false){
                dude.attachImage(strght_jump[counter_jump]);  
          }
          
         // Adds jumping left movement  
          if(pressedL == true){
                dude.attachImage(left_jump[counter_jump]);   
          }
           
         // Adds jumping right movement
          if(pressedR == true){
                dude.attachImage(right_jump[counter_jump]);
          }
          
          jumpspeed = 0.2 +1+ (jumpLevel*0.05) + (movementLevel*0.05);                                                  
          
         // regression of jump
          if (counter_jump == 3){
              if (j_time >= jump_time + 700){
                jump_incr = 1;
                jump_incr = jump_incr * -1;
              }
              else{
              jump_incr = 0;
              }
           }
          // End of Jump
           if (counter_jump <= 0 &&  jump_incr != abs(jump_incr)){  //Stop jump sequence once size has increased, reached 80 and decreased 
              jumping = false;
              first_time = true;
              counter_jump = 0;
              jump_incr = jump_incr * -1;
              jumpspeed = 1;
            }
            
          }
}

void background_animation(){
        image(street1, 0, street1_y);
        image(street2, 0, street2_y);
        street1_y += street_vel * d_time;
        street2_y += street_vel * d_time; 
       
       if (street1_y >= 814){
              street1_y = -814;
            }
       
       if (street2_y >= 814){
              street2_y = - 814;
            }
}


boolean PunkPointsChecker(obstacles obstacle, FBox dude){
         dist_x = abs(obstacle.obst.getX() - dude.getX());
         dist_y = abs(obstacle.obst.getY() - dude.getY());
         punked = false;
        
        // Special formulas constructed based on images and object size
         x_dist_for_points = obstacle.wdth/2 + 20 + (dude.getWidth() + 10)/2;
         y_dist_for_points = obstacle.hght/2 + 20 + (dude.getHeight() + 10)/2;
        
          if (dist_x <= x_dist_for_points && dist_y <= y_dist_for_points)
          {
           punked = true;
          } 
          else
          {
           punked = false;
          } 
       
          return punked; 
}


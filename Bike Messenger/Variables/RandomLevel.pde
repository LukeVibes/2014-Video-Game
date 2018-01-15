void prerandomLevel(){
 background(234,14,64);
 
textFont(punk_font, 29);
  textAlign(CENTER);
  text("last as LONG as you can" ,250, 250);
  text("try and BEAT your HIGHSCORE", 250, 400);
}





void levelRandom(){
  
  
 // initalizes array
  if (inital_setup == true)
  {  
    
               
          full = false;
          r_counter = 0;
          r_high = - 650;
          r_low = -620;
          r_obj_vel = 300;
    r_time = millis() - new_time;
    the_objs = new obstacles[9];
    pos_array = new PVector[6];
    pos_array[0] = new PVector(40, 40);
    pos_array[1] = new PVector(60, 40);
    pos_array[2] = new PVector(80, 120);
    pos_array[3] = new PVector(170, 20);
    pos_array[4] = new PVector(200, 20);
    pos_array[5] = new PVector(400, 20);
    bikeWorld.clear();
    if(not_1_time == true)
    {
      dudeSetup();
    }
    inital_setup = false;
    
  }
  r_time = millis() - new_time; 
  
  controls();
  
  dude.setPosition(dude_x, 460);
  background_animation();
    
  fill(255);
  textFont(punk_font, 24);
  textAlign(LEFT);
  text("Time:  "+ int(r_time/1000), 10, 25);   
  
  
 
  // increases speed of objects every 20 seconds
  if (r_time >= r_old_time + 20000)
  {
   r_old_time = r_time; 
    r_obj_vel += 200;
  }
  
  
  
  
  bikeWorld.step();
  bikeWorld.draw();
  
  
 while (full == false)
   {
     randomCreate();
   }
   
  if (full == true)
  {
   
    for (int i = 0; i < 8; i++)
    {
       
      FBox random_obj = the_objs[i].obst;
      random_obj.setRestitution(0);
      random_obj.setDamping(0);
      random_obj.setFriction(0);
      random_obj.setVelocity(0, r_obj_vel);
      if (i == 7)
      { 
        if (the_objs[7].obst.getY() > 500)
        {
          full = false;
          r_counter = 0;
          r_high = - 650;
          r_low = -620;
        }
      }
      
    }
  }
}
 
 void randomCreate()/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 {
     obstacles real_obj = rando();
     bikeWorld.add(real_obj.obst);
     the_objs[r_counter] = real_obj;
     r_counter++;
     if (r_counter == 8){full = true;}
 }
 
obstacles rando(){////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  
  //Step One: Size
  r_size = pos_array[int(random(0,5))];
  int r_hght = int(r_size.y);
  int r_wdth = int(r_size.x); 
  
  //Step Two: Position
  r_x = int(random(50, 450 - r_wdth));
  r_y = int(random(r_low, r_high));
  r_y = r_y - 500;
  
  
  
  //Step Three: Make obj
    obstacles obj = new obstacles(r_x, r_y, r_wdth, r_hght, r_obj_vel, false, 0, false);
   
    obj.obst.setSensor(true);
    obj.obst.setPosition(r_x, r_y);
    
 
  //Increase interval
    r_low = r_low + (r_hght + 100);
    r_high = r_high + (r_hght + 100);   
  
     
   return obj;
}

void resultsOfRandomLevel()////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
{
  last_time = r_time;
  lastMin = floor(last_time/60000);
  lastSec = floor((last_time - (min*60000))/1000);
  if (best_time < last_time)
  {
    best_time = last_time;
    Best_min = floor(best_time/60000);
    Best_sec = floor((best_time - (min*60000))/1000);
  }
  min = floor(r_time /60000);
  secs = floor((r_time - (min*60000))/1000);
  background(4,204,20);
  fill(255);
  textFont(punk_font, 29);
  textAlign(CENTER);
  text("your time is  " + min ,250, 250);
  textFont(font, 29);
  text(":",375, 250);
  textFont(punk_font, 29);
  text(secs, 395, 250);
  text("press ENTER to continue", 250, 400);
    
    
} 


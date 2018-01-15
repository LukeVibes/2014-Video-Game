
//Made by Morgan Lay and Luke Daschko

import fisica.*;
FWorld bikeWorld;  // initalizing world 

// GameMode Start Variables 
          int gameMode = 0;
          int currentLevel = 0;
          
  
//Music Library
       // City Sounds
          import ddf.minim.*;
          AudioPlayer titleSound;
          Minim minim;
          
       // Clapping
          AudioPlayer creditSound;
          Minim creditMinim;

//Color Library
          color white = color(265,265,265);
          color red = color(265,0,0);   
          color black = color(0,0,0);
          color orange = color(265,130,0);
          color maroon = color(128,0,0);  
          color midnightBlue = color(0,0,128);
               
// Useful Global Variables
          int middle = 250;
    

//Title Screen\\
          float fontsize = 20;
       
          float incr2 = 0.003;
        
          float new_time;
          float old_time;
          float d_time;
          
          boolean fontflag = true;
          boolean colorUp = true;
        
      // Cities and relevant variables
          PImage city;
          PImage city2;
          
          float city_x;
          float city2_x = -900; 
          
          float  vel = 0.05; 
 
      // Title Font
          PFont punk_font;
          PFont font;
          
      // Background Colours  
          int colorA = 20;
          int colorB = 20;
          int colorC = 90;




        
// Level Variables \\
      // Level Select Variables
          PImage infinity;
          PImage heart;
          PImage emptyHeart;
          boolean displayInstructions = true;

    // Bike Messenger Character Variables 
          FBox dude;                  // This object represents the Bike Messenger named "Dude"  
          float dude_size = 40;      
          float dude_x = 250;
          float dude_y = 460;
          float size_change = 4;          /// This variable is in regards to the jumping action  
          boolean jumping = false;
          float jumpspeed = 1;
          boolean first_time = true;
          boolean dude_is_down = false;
          int lives = 3;
          boolean lose_life = true;
          float pedal_old_time;
          float pedal_time;
          int p_index = 1;
          int p_incr = 1;
          PImage pedal_array[];
         
    // Punk Points
          int punkPoints;
          int currentPoints;
          float distance;
          boolean receiving_punkPoints = false;  
      
    // Background Variables
          PImage street1;
          PImage street2;
          float street1_y = 0;
          float street2_y = -814;
          float street_vel = 0.3;
  
    //Obstacle Array
          obstacles[] level_one_array;
          obstacles[] level_two_array;
          PVector[] obst_pos_array;
   
    //Obstacle Spawning Variables 
          boolean phase2_obst = true;
          boolean phase3_obst = true;
          boolean phase4_obst = true;
          boolean phase5_obst = true;
          boolean phase6_obst = true;
          boolean phase7_obst = true;
          boolean phase8_obst = true;
          boolean phase9_obst = true;
          
    // Level Variables
          boolean initalize_level = true;
          float obst_vel = 300;
          float car_vel = 330;
          int cur_phase = 1;
          boolean one_time = true;
          boolean levelOneOver = false;
          boolean levelTwoOver = false;
          float dist_x, dist_y;
          float x_dist_for_points;
          float y_dist_for_points;
          boolean punked = false;

// Control Variables \\      
          boolean pressedL;            //true when pressed - the button to go left   (currently is: 'a' key)  
          boolean pressedR;            //true when pressed - the button to go right  (currently is: 'd' key)  
          boolean pressedJ;            //true when pressed - the button to    jump   (currently is: 'j' key)  
          float bike_vel = 0.3; 
          int counter_jump = 0 ;
          int jump_incr = 1;
          float jump_time;
          float j_time;
         
      // Image Variables  
          PImage straight;
          PImage straight2;
          PImage straight3;
          PImage left;  
          PImage right;  
          
          PImage s_jump_1;
          PImage s_jump_2;
          PImage s_jump_3;
          PImage s_jump_4;
          
          PImage l_jump_1;
          PImage l_jump_2;
          PImage l_jump_3;
          PImage l_jump_4;
          
          PImage r_jump_1;
          PImage r_jump_2;
          PImage r_jump_3;
          PImage r_jump_4;
          
          PImage dude_down;
          
          PImage trash;
          PImage redcar;
          PImage bluecar;
          PImage greencar;
          PImage purplecar;
          PImage barrier;
          PImage barrier400;
          PImage barrier200;
          PImage barrier170;
          PImage[] cars = new PImage[4];
          
          PImage[] strght_jump = new PImage[4]; 
          PImage[] left_jump   = new PImage[4];
          PImage[] right_jump  = new PImage[4];
      
// Upgrading \\
      // Upgrade Buttons
          int upButX = 250;
          int upButY = 250;
          
          float jumpLevel = 1;
          float movementLevel = 1;
          
          int jumpCost = 300;
          int movementCost = 300;


// Pausing \\
          boolean canPause = false;
          boolean pause = false;
          
// Credits \\
          boolean playCredits=false;
          int index = 0;
          float namesX = 250;
          PFont font1;
          
      // Bike image variables
          PImage bikeImage;
          int bikeX=0;
          int bikeSpeed=3;
          
          PImage backwardsBikeImage;
          int backwardsBikeX=width-66;
          
          String[] names = {
            "Creators:",
            "Morgan Lay",
            "Luke Daschko",
            };
            
            
// randomLevel Variables \\
          int r_x;
          int r_y;
          PVector r_size;
          boolean full;
          int r_high = -550;
          int r_low = -520;
          int r_obj_vel = 300;
          int r_counter = 0;
          float r_old_time = 0;
          float r_time;
          PVector pos_array[];
          obstacles the_objs[];
          boolean inital_setup = true;
          boolean not_1_time = false;
          float best_time;
          float last_time;
          int min, secs;
          int lastMin, lastSec;
          int Best_min, Best_sec; 
          























  















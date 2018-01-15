void dudeSetup(){
         dude_is_down = false;
         dude = new FBox(23, 64);
        dude.attachImage(straight);
        dude.setRestitution(0); 
        bikeWorld.add(dude);
        dude.setGrabbable(false);
}

void settings(){
  size(500, 500);
}
void setup(){
  
       //-- standard initialization --
        
        Fisica.init(this);
        frameRate(30);
        smooth();
        
       
       //-- world creation --\\
        bikeWorld = new FWorld();
        bikeWorld.setEdges(0, 0, 500, 650);  /* bottom right cooridantes: (500, 500 + length longest object) == (500, 500 + 150) == (500, 650)  */
        bikeWorld.remove(bikeWorld.top);
        
        
       //-- delcaring array --\\
        level_one_array = new obstacles[30];
         level_two_array = new obstacles[37];
        
        
        
       //-- bike messenger creation --\\
        straight = loadImage("dude.png");
        straight2 = loadImage("straight2.png");
        straight3 = loadImage("straight3.png");
        left     = loadImage("dude_left.png");
        right    = loadImage("dude_right.png");
        
        s_jump_1 = loadImage("dude_s1.png");
        s_jump_2 = loadImage("dude_s2.png");
        s_jump_3 = loadImage("dude_s3.png");
        s_jump_4 = loadImage("dude_s4.png");
        
        l_jump_1 = loadImage("dude_l1.png");
        l_jump_2 = loadImage("dude_l2.png");
        l_jump_3 = loadImage("dude_l3.png");
        l_jump_4 = loadImage("dude_l4.png");
        
        r_jump_1 = loadImage("dude_r1.png");
        r_jump_2 = loadImage("dude_r2.png");
        r_jump_3 = loadImage("dude_r3.png");
        r_jump_4 = loadImage("dude_r4.png");
        
        dude_down = loadImage("dude_down.png");
        
        trash = loadImage("Trash.png");
        redcar = loadImage("redcar.png");
        bluecar = loadImage("bluecar.png");
        greencar = loadImage("greencar.png");
        purplecar = loadImage("purplecar.png");
        barrier = loadImage("barrier.png");
        barrier400 = loadImage("barrier400.png");
        barrier200 = loadImage("barrier200.png");
        barrier170 = loadImage("barrier170.png");
        
        cars[0] = redcar;
        cars[1] = bluecar;
        cars[2] = greencar;
        cars[3] = purplecar;
        
        strght_jump[0] = s_jump_1;
        strght_jump[1] = s_jump_2;
        strght_jump[2] = s_jump_3;
        strght_jump[3] = s_jump_4;
        
        left_jump[0] = l_jump_1;
        left_jump[1] = l_jump_2;
        left_jump[2] = l_jump_3;
        left_jump[3] = l_jump_4;
        
        right_jump[0] = r_jump_1;
        right_jump[1] = r_jump_2;
        right_jump[2] = r_jump_3;
        right_jump[3] = r_jump_4;
        
        dudeSetup();
        
        
       //-- gravity deletion --\\
        bikeWorld.setGravity(0,0); 
        
         
       //-- obst creation --\\
          obst_pos_array = new PVector[20];
          obst_pos_array[0] = new PVector(250, -250);
          obst_pos_array[4] = new PVector(100, -100);
      
        pedal_array = new PImage[2];
        pedal_array[0] = straight; 
        pedal_array[1] = straight3;
        
        level_one_array[0] = new obstacles(128, 300, 40, 40, obst_vel, false, 1, false);
        level_one_array[1] = new obstacles(318, 170, 80, 120, car_vel, true, 1, true);
        level_one_array[2] = new obstacles(250, 30, 400, 20, obst_vel, false, 1, false);
         
        level_one_array[3] = new obstacles(250, -60, 400, 20, 0, false, 2, false);
        level_one_array[4] = new obstacles(275, -300, 40, 40, 0, false, 2, true);
        level_one_array[5] = new obstacles(250, -350, 400, 20, 0, false, 2, false);
        level_one_array[6] = new obstacles(400, -445, 40, 40, 0, false, 2, false);
        
        level_one_array[7] = new obstacles(283, -10, 60, 40, 0, false, 3, false);
        level_one_array[8] = new obstacles(200, -75, 40, 40, 0, false, 3, false);
        level_one_array[9] = new obstacles(300, -260, 80, 120, 0, true, 3, true);
        level_one_array[10] = new obstacles(133, -375, 170, 20, 0, false, 3, false);
        level_one_array[11] = new obstacles(370, -460, 40, 40, 0, false, 3, false);
        
        level_one_array[12] = new obstacles(110, -135, 170, 20, 0, false, 4, false);
        level_one_array[13] = new obstacles(340, -135, 200, 20, 0, false, 4, false);
        level_one_array[14] = new obstacles(105, -325, 40, 40, 0, false, 4, true);
        level_one_array[15] = new obstacles(300, -425, 80, 120, 0, true, 4, false);
        
        level_one_array[16] = new obstacles(400, -65, 40, 40, 0, false, 5, false);
        level_one_array[17] = new obstacles(314, -174, 40, 40, 0, false, 5, true);
        level_one_array[18] = new obstacles(250, -300, 400, 20, 0, false, 5, false);
        
        level_one_array[19] = new obstacles(330, -46, 40, 40, 0, false, 6, false);
        level_one_array[20] = new obstacles(100, -80, 80, 120, 0, false, 6, false);
        level_one_array[21] = new obstacles(215, -300, 80, 120, 0, false, 6, true);
        level_one_array[22] = new obstacles(380, -440, 40, 40, 0, false, 6, false);
        level_one_array[23] = new obstacles(140, -460, 170, 20, 0, false, 6, false);
        
        level_one_array[24] = new obstacles(415, -200, 80, 120, 0, true, 7, true);
        level_one_array[25] = new obstacles(175, -300, 80, 120, 0, true, 7, false);
        level_one_array[26] = new obstacles(380, -460, 40, 40, 0, false, 7, false);
        
        level_one_array[27] = new obstacles(100, -30, 40, 40, 0, false, 8, false);
        level_one_array[28] = new obstacles(345, -200, 170, 20, 0, false, 8, false);
        level_one_array[29] = new obstacles(120, -260, 80, 120, 0, true, 8, false);
       
       /////////////////////////////////////////////////////////////////////////////////////////
      
        level_two_array[0] = new obstacles(50, 100, 40, 40, obst_vel, false, 1, false);
        level_two_array[1] = new obstacles(350, 20, 60, 40, obst_vel, false, 1, true);
        level_two_array[2] = new obstacles(100, 100, 40, 40, obst_vel, false, 1, false);
        
        level_two_array[3] = new obstacles(230, -10, 400, 20, 0, false, 2, false); 
        level_two_array[4] = new obstacles(135, -210, 80, 120, 0, true, 2, false);
        level_two_array[5] = new obstacles(300, -300, 80, 120, 0, true, 2, true);
        level_two_array[6] = new obstacles(233, -450, 40, 40, 0, false, 2, false);
        level_two_array[7] = new obstacles(420, -470, 40, 40, 0, false, 2, false);
        
        level_two_array[8] = new obstacles(216, -50, 40, 40, 0, false, 3, false);
        level_two_array[9] = new obstacles(370, -100, 40, 40, 0, false, 3, false);
        level_two_array[10] = new obstacles(125, -180, 170, 20, 0, false, 3, false);
        level_two_array[11] = new obstacles(300, -290, 60, 40, 0, false, 3, true);
        level_two_array[12] = new obstacles(320, -400, 170, 20, 0, false, 3, false);
        level_two_array[13] = new obstacles(120, -440, 80, 120, 0, true, 3, false);
        level_two_array[14] = new obstacles(400, -480, 170, 20, 0, false, 3, false);
        
        level_two_array[15] = new obstacles(160, -110, 40, 40, 0, false, 4, false);
        level_two_array[16] = new obstacles(320, -110, 170, 20, 0, false, 4, false);
        level_two_array[17] = new obstacles(100, -250, 40, 40, 0, false, 4, true);
        level_two_array[18] = new obstacles(350, -420, 80, 120, 0, true, 4, false);  
        
        level_two_array[19] = new obstacles(100, -130, 40, 40, 0, false, 5, false);
        level_two_array[20] = new obstacles(200, -180, 60, 40, 0, false, 5, false);
        level_two_array[21] = new obstacles(320, -270, 60, 40, 0, false, 5, true);
        level_two_array[22] = new obstacles(380, -400, 40, 40, 0, false, 5, false);
        level_two_array[23] = new obstacles(150, -480, 200, 20, 0, false, 5, false);
        
        level_two_array[24] = new obstacles(190, -110, 40, 40, 0, false, 6, false);
        level_two_array[25] = new obstacles(350, -220, 80, 120, 0, true, 6, true);
        level_two_array[26] = new obstacles(130, -350, 170, 20, 0, false, 6, false);
        level_two_array[27] = new obstacles(400, -370, 40, 40, 0, false, 6, false);
        level_two_array[28] = new obstacles(280, -490, 40, 40, 0, false, 6, false);
        
        level_two_array[29] = new obstacles(400, -50, 40, 40, 0, false, 7, false);
        level_two_array[30] = new obstacles(120, -50, 40, 40, 0, false, 7, false);
        level_two_array[31] = new obstacles(300, -100, 40, 40, 0, false, 7, false);
        level_two_array[32] = new obstacles(125, -140, 60, 40, 0, false, 7, false);
        level_two_array[33] = new obstacles(250, -500, 400, 20, 0, false, 7, true);
        level_two_array[34] = new obstacles(250, -460, 40, 40, 0, false, 7, false);
        
        level_two_array[35] = new obstacles(130, -103, 80, 120, 0, true, 8, false);
        level_two_array[36] = new obstacles(310, -180, 80, 120, 0, true, 8, false); 
       
        //-- seting up obstacles --\\
       
        
        
        
        //Title Sound
            minim = new Minim(this);
            titleSound = minim.loadFile("CitySounds.mp3");
            titleSound.loop();
      
            creditMinim = new Minim(this);
            creditSound = creditMinim.loadFile("Applause.mp3");    // <--- We realize that this creates the error "JavaSound Minim Error" and that the error is harmless.
                                                                   // The error is supposedly due to a tag error, and it doesn't affect the audio or the program itself, besides being a tad bothersome.
                                                                   
            
      // Loading Images
              // Loading Title Images
            city = loadImage("city.png");
            city2 = loadImage("city.png");
          
              // Loading Level Images
            street1 = loadImage("background3.png");
            street2 = loadImage("background3.png");
            
            heart = loadImage("Heart.png");
            emptyHeart = loadImage("emptyHeart.png");
                                      
              // Loading Credit Images
            bikeImage = loadImage("bike.png");
            backwardsBikeImage = loadImage("BackwardsBike.png");
              
              // Loading Level Select Images
            infinity = loadImage("infinity.png");
            
      // Loading Fonts  
              // Loading Title Fonts
            font = loadFont("Impact-25.vlw");
            punk_font =createFont("CFPunk.ttf", 60);
              // Loading Credits Fonts
            font1 = loadFont("DilleniaUPCBold-32.vlw"); 
}
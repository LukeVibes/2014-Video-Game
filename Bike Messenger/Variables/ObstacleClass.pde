class obstacles {
    float x;
    float y;
    float wdth;
    float hght;
    FBox obst;
    float vel;
    float x_pos;
    float y_pos;
    boolean isCar; 
                    
   boolean flag;
   int phase;    
  

  obstacles(float x_in, float y_in, float wdth_in, float hght_in, float vel_in, boolean isCar_in, int phase_in, boolean flag_in){
            x = x_in;
            y = y_in;
            wdth = wdth_in;
            hght = hght_in; 
            obst = new FBox(wdth, hght); 
            x_pos = obst.getX();
            y_pos = obst.getY(); 
            obst.setSensor(true);
            flag = flag_in;
            phase = phase_in;
            isCar = isCar_in;
            vel = vel_in;
            obst.setGrabbable(false); 
            
            
            // Auto Adds image coresponding to size
             if (hght_in == 40 && wdth_in == 40){
               obst.attachImage(trash); 
             }
              
             if (hght_in == 120 && wdth_in == 80){
               int i = int(random(0,3));
               obst.attachImage(cars[i]);
             }
             
             if (hght_in == 40 && wdth_in == 60){
             obst.attachImage(barrier);
             }
             if (hght_in == 20 && wdth_in == 400){
             obst.attachImage(barrier400);
             }
             if (hght_in == 20 && wdth_in == 200){
             obst.attachImage(barrier200);
             }
             if (hght_in == 20 && wdth_in == 170){
             obst.attachImage(barrier170);
             }
          
  }

  void display(){ 
    obst.setRestitution(0); 
    obst.setVelocity(0, vel);
  }
 
  void pre_display(){
    obst.setPosition(x, y);
    bikeWorld.add(obst);
  }

}


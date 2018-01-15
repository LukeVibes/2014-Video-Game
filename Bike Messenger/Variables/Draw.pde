void draw()
{
switch(gameMode){
  
   case 0:
         titleScreen();
         break;
       
   case 1:
         
         level(level_one_array, 30, 1);
         currentLevel = 1;
          canPause = true;
     break;
   
   case 2:
         creditScreen();
     break;
     
   case 3: 
         instructionScreen();
     break;
     
   case 4:
         levelSelectScreen();
     break;
     
   case 5: 
         upgradeScreen();

     break;
     
   case 6: 
          
         currentLevel = 2;
          level(level_two_array, 37, 2);
         canPause = true;
   break;
   
   case 7:
           currentLevel = 69;
           levelRandom();
           canPause = true;
  break;
  
  case 8:
          resultsOfRandomLevel();
 break;
 
 case 9:
         prerandomLevel();
 break;
 
 case 10:
         preLevel();
 break;
 
 case 11:
         levelOneIntro();
 break;
  }
}





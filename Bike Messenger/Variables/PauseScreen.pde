
void pauseScreen(){         
        filter(BLUR, 5);
        filter(GRAY);      
        fill(0);
        textAlign(CENTER);
        textFont(punk_font, 64);
        text("Game Paused", width/2, height/2); 
}

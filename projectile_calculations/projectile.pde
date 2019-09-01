public class projectile {
  float Xpos;
  float initX;
  float Ypos;
  float initY;
  float Vx;
  float Vy;
  float initTheta;
  float a = 9.8;
  
  projectile(float ixpos, float iypos, float ivx, float ivy, float theta) {
    Xpos = ixpos;
    initX = ixpos;
    Ypos = iypos;
    initY = iypos;
    Vx = ivx;
    Vy = ivy;
    initTheta = theta;
  }
  projectile(float ixpos, float iypos, float iv, float theta) {
    Xpos = ixpos;
    initX = ixpos;
    Ypos = iypos;
    initY = iypos;
    Vx = iv * cos(radians(theta));
    Vy = iv * sin(radians(theta));
    initTheta = theta;
  }
  projectile(float ixpos, float iypos) {
    Xpos = ixpos;
    initX = ixpos;
    Ypos = iypos;
    initY = iypos;
    Vx = 0;
    Vy = 0;
    initTheta = 270;
  }
  
  // Updates the position of the projectile based on a time input
  void updatePos(float t, int h){
    Xpos = initX + Vx * t;
    Ypos = initY + Vy * t - 0.5 * a * t * t; 
    drawProjectile(h);
  }
  
  // Gets projectile x coordinate
  float getXpos() {
    return this.Xpos;
  }
  
  // Gets projectile y coordinate
  float getYpos() {
    return this.Ypos;
  }
  
  // Draw object using current x and y coordinates
  void drawProjectile(int h){
    ellipse(Xpos, h - Ypos, 5, 5);
  }
  
  
  
}

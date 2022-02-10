//ボックスの直線移動
void box_move(){
  //ボックスの移動1
  if(mousePressed){
    if((move1 < 750)&&(angle1 == 0)&&(move2 == 0)){
        move1 += movespeed;
    }
  }
  
  //ボックスの移動2
    if((move1 == 750)&&(angle1 == 180)&&(angle3 == 0)){
      if(move2 < 750){
        move2 += movespeed;
      }
    }
}

//ボックスの回転移動
void box_rotate(){
  //ボックス
  pushMatrix();
  if(move2 == 0){
      Z = 250;
    }
  if((move2 > 0)||((move1 == 750)&&(angle1 == 180)&&(move2 == 0))){
    Z = -250;
  }
  
  translate(-750 + move1 + move2, -25, Z);
    if((move1 == 750)&&(angle3 == -81)&&(move2 == 0)){
      translate(0, 0, -250);
      rotateY(radians(angle1));
      translate(0, 0, 250);
    }
  fill(0, 0, 200); 
  box(50, 50, 50);
  popMatrix();
}

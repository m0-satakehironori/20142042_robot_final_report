//ロボットアームの動作
void robot_arm_move(){
  //アームのボックスを取る動作
  if((move1 == 750)&&(angle1 == 0)&&(move2 == 0)){
    if(angle2 > -80){
        angle2 += angle2move;
    }
    if(angle3 > -81){
        angle3 += angle3move;
    }
  }
  
  //アームの回転動作
  if((move1 == 750)&&(angle3 == -81)&&(move2 == 0)){
      if(angle1 < 180){
        angle1 += angle1move;
      }
    }
  
  //アームのボックスを置く動作
    if((move1 == 750)&&(angle1 == 180)&&(move2 == 0)){
      if(angle2 < 0){
        angle2 -= angle2move;
      }
      if(angle3 < 0){
        angle3 -= angle3move;
      }
    }
}

//ロボットアームの構成部品
void robot_arm_components(){
  //アーム1
  translate(0, -100, 0);
  rotateY(radians(angle1));
  fill(235, 252, 0);
  box(30, 200, 30);
  
  //関節1
  translate(0, -100, 0);
  fill(200, 200, 200);
  box(27);

  //アーム2
  rotateX(radians(angle2));
  translate(0, -100, 0);
  fill(235, 252, 0);
  box(25, 200, 25);
  
  //関節2
  translate(0, -100, 0);
  fill(200, 200, 200);
  box(17);
  
  //アーム3
  rotateX(radians(angle3));
  translate(0, -100, 0);
  fill(235, 252, 0);
  box(15, 200, 15);
}

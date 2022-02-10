//カメラ移動
float camX = -500;
float camY = 0;
float camspeed = 10;

//ボックス移動
float move1 = 0;
float move2 = 0;
float movespeed = 10;
float Z;

//ロボットアームの動作
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle1move = 1;
float angle2move = -1;
float angle3move = -1;

void setup() {
  size(1200, 800, P3D);
}

void draw() {
  background(32);
  
  lights();
  
  //カメラ移動
  camera();
  
  //ロボットアームの動作
  robot_arm_move();
  
  //ボックスの直線移動
  box_move();
  
  //ベルトコンベア
  belt_conveyor();
  
  //ボックスの回転移動
  box_rotate();
    
  //ロボットアームの構成部品
  robot_arm_components();
  
  //全ての動作の初期化
  reset();
  
}

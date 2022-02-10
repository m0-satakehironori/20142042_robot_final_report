//カメラ移動
void camera(){
  // カメラを動かす
  if (keyPressed) {
    if (keyCode == LEFT){
      camX -= camspeed;
    }
    if (keyCode == RIGHT){
      camX += camspeed;
    }
    if (keyCode == UP){
      camY -= camspeed;
    }
    if (keyCode == DOWN){
      camY += camspeed;
    }
    if(key == 'R'){
      camX = -500;
      camY = 0;
    }
  }
  // カメラの設定
  camera(camX, camY, 500, width/2, height/2, 0, 0, 1, 0);
}

//ベルトコンベア
void belt_conveyor(){
  //ベルトコンベア1
  translate(width/2, height/2, 0);
  pushMatrix();
  translate(0, 0, 200);
  fill(0, 200, 0);
  noStroke(); 
  rotateX(PI/2);
  rect(200, 0, -1000, 100);
  translate(-750, 50, 30);
  fill(100);
  box(60, 100, 60);
  popMatrix();
  
  //ベルトコンベア2
  pushMatrix();
  translate(0, 0, -300);
  fill(200, 0, 0);
  noStroke();
  rotateX(PI/2);
  rect(-200, 0, 1000, 100);
  translate(750, 50, 30);
  fill(100);
  box(60, 100, 60);
  popMatrix();
}

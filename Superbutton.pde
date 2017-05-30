Button button;
 
void setup(){
  size(200,200);
  button = new Button( 20, 20, 60, 30, "you_click", "Click!", color(128), color(196), color(255) );
}
 
void draw(){
  background(0,128,0);
  button.draw();
}
 
void mousePressed(){
  button.onClick();
}
 
void you_click(){
  println("YOU CLICKED!");
}
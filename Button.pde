 class Button {
  float x, y, w, h;
  String s, t;
  color c, k, q;
  Button(float ix, float iy, float iw, float ih, String is, String it, color ic, color ik, color iq) {
    x=ix;
    y=iy;
    w=iw;
    h=ih;
    s=is;
    t=it;
    c=ic;
    k=ik;
    q=iq;
  }
  boolean isOver() {
    return(mouseX>=x&&mouseX<=x+w&&mouseY>=y&&mouseY<=y+h);
  }
  void onClick() {
    if (isOver() && !s.equals("")) method(s);
  }
  void draw() {
    pushStyle();
    stroke(0);
    fill(isOver()?(mousePressed?q:k):c);
    rect(x, y, w, h);
    fill(0);
    textAlign(CENTER, CENTER);
    text(t,x+w/2.0,y+h/2.0);
    popStyle();
  }
}
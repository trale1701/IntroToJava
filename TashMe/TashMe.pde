
  PImage mustache;

PImage friend;
void setup(){ friend = loadImage("face.png");

size(800, 600);
  mustache = loadImage("mustache.png");
friend.resize(800,600);}       
void draw(){
  
  background(friend);  
  if(mousePressed){
  image(mustache, mouseX-100, mouseY-60);
  
}}
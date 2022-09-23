//makes a spider web pattern made in proccesing 3
PVector[] sp;
PVector[] acc;
PVector target;


int num = 20;

void setup() {
  size(800, 800);
  

  sp = new PVector[num];
  acc = new PVector[num];
 target =new PVector( 800, 600);
 
 
// tried using lerp but i am not sure if it did anything
  for (int i = 0; i < num; i++) {
    sp[i] = new PVector(random(width), random(height), random(5, 70));
    acc[i] = new PVector(random(-2, 2), random(-2, 2), 0);
  sp[i].lerp(target, 10);
sp[i].limit(10);
acc[i].limit(50);


}
  stroke(89);
  noFill();
  background(0, 20);

 
 

}

void draw() {
 // background(0,10);

  for (int j = 0; j < num; j++) {
    
    sp[j].add(acc[j]);
 
    if ((sp[j].x > width) || (sp[j].x < 0)) {
      acc[j].x = acc[j].x * -1;
    
 sp[j].mult(50);
}

    if ((sp[j].y > height) || (sp[j].y < 0)) {
      acc[j].y = acc[j].y * -1;
    }

    rect(sp[j].x, sp[j].y, sp[j].z, sp[j].z);
  }
  
}
  

 
   
    

 
   
   
 


 

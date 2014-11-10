float x;
float y;
float px;
float py;
char determiner;
float easing=0.05;

//This controls the stroke of the pen and pencil.
int pen=2;
int paint=30;
int eraser=50;

//This controls the transparency of the tools.
int paintt=50;
int pent=230;
int markert=255;

void setup(){
  size(800,800);
  background(255,255,255);
  smooth();
  noStroke();
}


void draw(){
 float targetX=mouseX;
 x+=(targetX-x)*easing;
 float targetY=mouseY;
 y+=(targetY-y)*easing;
 float weight=dist(x,y,px,py);
 
 
 if (determiner=='e'){
   strokeWeight(weight);
 }else if(determiner=='p'){
   strokeWeight(pen);
 }else if(determiner=='b'){
   strokeWeight(paint);
 }else if(determiner=='c'){
   strokeWeight(eraser);
 }
 
 
 line(x,y,px,py);
 py=y;
 px=x;

  
}



void keyPressed(){
  println(key+" key was pressed!");

  if (keyPressed){
    
    //Hovering Around the Screen
    if(key==ENTER){
      noStroke();
    }
    
    //PEN
    
    //black
    else if (key=='1'){
        stroke(0,0,0,pent);
        determiner='p';
    } 
    
    //red
    else if (key=='2'){
        stroke(#FF0000,pent);
        determiner='p';
    } 

    
    //orange
    else if (key=='3'){
        stroke(#FF7F00,pent);
        determiner='p';
    } 
    
    //yellow
    else if (key=='4'){
        stroke(#FFFF00,pent);
        determiner='p';
    } 
    
    //green
    else if (key=='5'){
        stroke(#00FF00,230);
        determiner='p';
    } 
    
    //blue
    else if (key=='6'){
        stroke(#0000FF,pent);
        determiner='p';
    } 
    
    
    //violet
    else if (key=='7'){
        stroke(#8B00FF,pent);
        determiner='p';
    } 
    
    //pink
    else if (key=='8'){
        stroke(#FF33E4,markert);
        determiner='e';
    } 
    
  
    //random
    else if (key=='9'){
        stroke(random(255),random(255),random(255),pent);
        determiner='p';
    } 
    
    
    
    
    //MARKER
    
    //black
    else if (key=='q'){
        stroke(0,0,0,markert);
        determiner='e';
    } 
    
    //red
    else if (key=='w'){
        stroke(#FF0000,markert);
        determiner='e';
    } 
    
    //orange
    else if (key=='e'){
        stroke(#FF7F00,markert);
        determiner='e';
    } 
    
    //yellow
    else if (key=='r'){
        stroke(#FFFF00,markert);
        determiner='e';
    } 
    
    //green
    else if (key=='t'){
        stroke(#00FF00,markert);
        determiner='e';
    } 
    
    //blue
    else if (key=='y'){
        stroke(#0000FF,markert);
        determiner='e';
    } 
    
    //violet
    else if (key=='u'){
        stroke(#8B00FF,markert);
        determiner='e';
    } 
    
    //pink
    else if (key=='i'){
        stroke(#FF33E4,markert);
        determiner='e';
    } 
    
    //random
    else if (key=='o'){
        stroke(random(255),random(255),random(255),markert);
        determiner='e';
    } 
    
    
    
    //PAINT
    
    //black
    
    else if (key=='a'){
        stroke(0,0,0,paintt);
        determiner='b';
    } 
    
    //red
    else if (key=='s'){
        stroke(#FF0000,paintt);
        determiner='b';
    } 
    
    //orange
    else if (key=='d'){
        stroke(#FF7F00,paintt);
        determiner='b';
    } 
    
    //yellow
    else if (key=='f'){
        stroke(#FFFF00,paintt);
        determiner='b';
    } 
    
    //green
    else if (key=='g'){
        stroke(#00FF00,paintt);
        determiner='b';
    } 
    
    //blue
    else if (key=='h'){
        stroke(#0000FF,paintt);
        determiner='b';
    } 
   
    
    //violet
    else if (key=='j'){
        stroke(#8B00FF,paintt);
        determiner='b';
    } 
    
    //pink
    else if (key=='k'){
        stroke(#FF33E4,paintt);
        determiner='b';
    } 
    
    //random
    else if (key=='l'){
        stroke(random(255),random(255),random(255),paintt);
        determiner='b';
    } 
    
    
    
   //eraser
   else if (key==' '){
        stroke(255,255,255);
        determiner='c';
   }

   
   
   //Pencil
   else if (key=='p'){
        stroke(0,0,0,100);
        determiner='p';
   }
}
}

void mousePressed(){
   if (mouseButton==LEFT){
     background(255,255,255);
   }else if(mouseButton==RIGHT){
     background(random(255),random(255),random(255));
   } 
}

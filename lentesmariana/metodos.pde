void display() {
  
  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();

  for (int i = 0; i < faces.length; i++) {

    switch(estados) {
      
    case 0:
    pushMatrix();
    fill(random(100,150), random(150,255), random(200,255));
    text("     ", 40, 20);
    
    text("                    LOS LENTES DE  BOB ", 20, 30);
    text(" Instrucciones ", 20, 40);
    text("Preciona las teclas 1,2,3,4,5,6 Para cambiar de filtro", 20, 50);
    text("Preciona la i Para generar una camptura de pantalla", 20, 60);
    textSize(11);
    popMatrix();
      break;
    case 1:
      pushMatrix();
      image(lentes, faces[i].x, faces[i].y+25, faces[i].width, faces[i].width-75);
      popMatrix();
      break;

    case 2:
      pushMatrix();
      image(lentes2, faces[i].x, faces[i].y, faces[i].width, faces[i].width);
      popMatrix();
      break;

    case 3:
      pushMatrix();
      image(lentes3, faces[i].x-35, faces[i].y-30, faces[i].width+80, faces[i].width+10);
      popMatrix();
      break;

    case 4:
      pushMatrix();
      image(lentes4, faces[i].x, faces[i].y-10, faces[i].width, faces[i].width);
      popMatrix();
      break;

    case 5:
      pushMatrix();
      image(lentes5, faces[i].x, faces[i].y-15, faces[i].width, faces[i].width);
      popMatrix();
      break;
    }
  }
}

void keyPressed(){
  
    if(key == '1'){
      estados=0;
    }
    
    if(key == '2'){
      estados=1;
    }
    
      if(key == '3'){
      estados=2;
    }
    
      if(key == '4'){
      estados=3;
    }
    
    if(key == '5'){
      estados=4;
    }
    
    if(key == '6'){
      estados=5;
    }
    
    if(key == 'i'){
      saveFrame("abs-######.png");//screanshoot
    }
  }

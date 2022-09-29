class Stand {



  Stand() {
  }

  void escenario() {
    //uso de lineas, su grosor y color de stand
    stroke (129, 3, 3);
    strokeWeight(6);
    line (0, 200, 600, 200);
    line (0, 330, 600, 330);
    line (0, 450, 600, 450);
    noFill();
    //uso de rectangulos para parte de abajo de stand con uso de rectangulos y distintos colores
    strokeWeight(50);
    rect (0, 0, 600, 450, 28);
    rect(10, 450, 20, 150);
    stroke (255, 255, 255);
    rect(80, 450, 10, 150);
    stroke (129, 3, 3);
    rect(140, 450, 10, 150);
    stroke (255, 255, 255);
    rect(200, 450, 10, 150);
    stroke (129, 3, 3);
    rect(260, 450, 10, 150);
    stroke (255, 255, 255);
    rect(320, 450, 10, 150);
    stroke (129, 3, 3);
    rect(380, 450, 10, 150);
    stroke (255, 255, 255);
    rect(440, 450, 10, 150);
    stroke (129, 3, 3);
    rect(500, 450, 10, 150);
    stroke (255, 255, 255);
    rect(560, 450, 20, 150);
  }
}

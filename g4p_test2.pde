import g4p_controls.*;
import processing.serial.*;
import java.awt.Font;

boolean GUICreated = false;
Serial myPort;



void setup()
{
  
  size(560,600);
}

void draw() {

  if (GUICreated == false) {
    createGUI();
    GUICreated = true;
  }
  
}


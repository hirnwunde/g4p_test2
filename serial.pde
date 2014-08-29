String SerialIncoming;
int lf = 10; // ASCII-Code LineFeed


void connectToPort() {
 
  myPort = new Serial(this, dropList1.getSelectedText(), 57600); 
  myPort.bufferUntil(lf); 

}

void disconnectFromPort() {
  myPort.clear();
  myPort.stop();
  
}  
  
  
  
void serialEvent(Serial p) {
  SerialIncoming = p.readString();
  
  ta_importedGCode.appendText(SerialIncoming);
  
  
  String[] XYraw = split(SerialIncoming, "_");
  String[] XY = split(XYraw[1], "Y");
  String[] Xtemp = split(XY[0], "X");
  
  String X = Xtemp[0];
  String Y = XY[1]; 

  textfield2.setText(X);
  textfield3.setText(Y);
  
  myPort.clear();
}  

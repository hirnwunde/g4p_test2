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
  
  String X = XYraw[1].substring(1);
  String Y = XYraw[2].substring(1); 

  textfield2.setText(X);
  textfield3.setText(Y);
  
  myPort.clear();
}  

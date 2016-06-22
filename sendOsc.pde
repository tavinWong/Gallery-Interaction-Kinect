/**
void mousePressed() {
  /**
  OscMessage myMessage = new OscMessage("/test");
  
  myMessage.add(dataSent[0]);
  myMessage.add(dataSent[1]); 
  myMessage.add(dataSent[2]);  

  //osc.send(myMessage);
  //oscP5.send(myMessage, myRemoteLocation); 
   println("*******max,min*******");
   println(dataSentMax);
   println(dataSentMin);
   println("-------max,min-------");
}
 **/

/**
void oscEvent(OscMessage theOscMessage) {

  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
  println(theOscMessage.get(0).intValue());
  println(theOscMessage.get(1).intValue());
  println(theOscMessage.get(2).intValue());
}
**/

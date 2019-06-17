import processing.net.*; 
Client myClient;

PImage i;

void setup() { 
  size(200, 200); 
  /* Connect to the local machine at port 5005
   *  (or whichever port you choose to run the
   *  server on).
   * This example will not run if you haven't
   *  previously started a server on this port.
  */ 
  myClient = new Client(this, "127.0.0.1", 5005); 
} 

void draw() { 
  //myClient.write("Paging Python!"); // send whatever you need to send here
  //image(i, 0, 0);
  delay(10);
  if (myClient.available() > 0) { 
    String inString = myClient.readString(); 
    println(inString); 
  }
} 
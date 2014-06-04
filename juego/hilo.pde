class hilo extends Thread {
 
  boolean running;           // Is the thread running?  Yes or no?
  int wait;                  // How many milliseconds should we wait in between executions?
  String id;                 // Thread name
  int posBalaX;                 // counter
  PImage imgBala;

 
  // Constructor, create the thread
  // It is not running by default
  hilo (int w, String s) {
    wait = w;
    running = false;
    id = s;
    posBalaX = 100;
  }
 
 
  // Overriding "start()"
  void start () {
    // Set running equal to true
    running = true;
    // Print messages
    println("Starting thread (will execute every " + wait + " milliseconds.)"); 
    // Do whatever start does in Thread, don't forget this!
    super.start();
  }
 
 
  // We must implement run, this gets triggered by start()
  void run () {
    while (running) {

//      thread1 = new hiloDisparador(100,"a");
//       thread1.start();
        posBalaX+=10;
       imgBala = loadImage("img/Bala.png");
        image(imgBala, posBalaX, 120); 
        print("count- "+posBalaX);
      // Ok, let's wait for however long we should wait
      try {
        sleep((long)(wait));

      } catch (Exception e) {
      }
    }
    System.out.println(id + " thread is done!");  // The thread is done when we get to the end of run()
  }
 
 
  // Our method that quits the thread
  void quit() {
    System.out.println("Quitting."); 
    running = false;  // Setting running to false ends the loop in run()
    // IUn case the thread is waiting. . .
    interrupt();
  }
  boolean getRunning(){
    return running;
  }
  int getposBalaX(){
   return posBalaX; 
  }
}

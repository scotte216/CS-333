code Main

  -- OS Class: Project 3
  --
  -- Scott Ewing
  --

-----------------------------  Main  ---------------------------------
  
   function main ()
        print ("Project 3 -- more synchronization problems...\n")
        InitializeScheduler()

       --Uncomment functions to run them
        SleepingBarber ()
       -- GamingParlor ()
  
        ThreadFinish ()
    endFunction


----------------------------  Sleeping Barber  ----------------------
-- This function impliments the Sleeping Barber routine supplied for 
-- project 3. This routine seems to have the problem of the Barber getting
-- locked out from starting new hair cuts by the mutex blocked list of
-- customers coming to check for an empty seat. The barber doesn't have any
-- priority over any other thread. It seems like a better solution would be
-- if the barber could immediately take another customer as soon as finished
-- with the first, but the routine supplied helps to emphasize the challenges
-- of sychronization. 

  const
     CHAIRS = 5 -- number of barber chairs
  var
     --Mutex:
     --mutexLock -- used to synchronize the main Barber() and Customer() 
     --printLock -- used to ensure only one thread at a time attempts to print. 
     mutexLock: Mutex = new Mutex
     printLock: Mutex = new Mutex

     waiting: int = 0 -- number of customers waiting

     --Threads:
     -- array for 20 customer threads
     customersArray: array [20] of Thread = new array of Thread {20 of new Thread }
     -- Our barber thread
     barber: Thread = new Thread 

     -- Semaphores:
     -- readyToCutSem is to indicate when the barber is awake and ready to give a haircut
     -- customersSem is for when there are customers waiting to wake the barber
     readyToCutSem: Semaphore = new Semaphore
     customersSem: Semaphore = new Semaphore
     
     --These semaphores are included for synchronization between the barber and his current
     --client. They're used to ensure the status printing occurs in the correct order. 
     --See Get_Haircut() and Cut_Hair() for more details
     barberEnd: Semaphore = new Semaphore
     customerGone: Semaphore = new Semaphore
   
 function SleepingBarber()
     -- Initialization
     mutexLock.Init ()
     printLock.Init ()
     readyToCutSem.Init(0)
     customersSem.Init(0)
     barberEnd.Init(0)
     customerGone.Init(1)

     print ("Sleeping Barber\n")
     print ("===============\n\n")

     print ("      Barber   1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20\n")
    
     barber.Init("Barber")
     barber.Fork(Barber,1)

     -- So many customers! 
     customersArray[0]. Init("          ")
     customersArray[1]. Init("             ")
     customersArray[2]. Init("                ")
     customersArray[3]. Init("                   ")
     customersArray[4]. Init("                      ")
     customersArray[5]. Init("                         ")
     customersArray[6]. Init("                            ")
     customersArray[7]. Init("                               ")
     customersArray[8]. Init("                                  ")
     customersArray[9]. Init("                                     ")
     customersArray[10].Init("                                        ")
     customersArray[11].Init("                                           ")
     customersArray[12].Init("                                              ")
     customersArray[13].Init("                                                 ")
     customersArray[14].Init("                                                    ")
     customersArray[15].Init("                                                       ")
     customersArray[16].Init("                                                          ")
     customersArray[17].Init("                                                             ")
     customersArray[18].Init("                                                                ")
     customersArray[19].Init("                                                                   ")
     
     
     -- This creates the customer threads, with the integer that can be used as a delay for each
     -- to determine when they arrive at the store. 
     customersArray[0].Fork (Customers,1)
     customersArray[1].Fork (Customers,2)
     customersArray[2].Fork (Customers,3)
     customersArray[3].Fork (Customers,4)
     customersArray[4].Fork (Customers,5)
     customersArray[5].Fork (Customers,6)
     customersArray[6].Fork (Customers,7)
     customersArray[7].Fork (Customers,8)
     customersArray[8].Fork (Customers,9)
     customersArray[9].Fork (Customers,10)
     customersArray[10].Fork (Customers,11)
     customersArray[11].Fork (Customers,12)
     customersArray[12].Fork (Customers,13)
     customersArray[13].Fork (Customers,14)
     customersArray[14].Fork (Customers,15)
     customersArray[15].Fork (Customers,16)
     customersArray[16].Fork (Customers,17)
     customersArray[17].Fork (Customers,18)
     customersArray[18].Fork (Customers,19)
     customersArray[19].Fork (Customers,20)
 
     ThreadFinish()

 endFunction


 function Barber(i: int )
    --The Barber's routine. 
    --NOTE: This function was mostly supplied to us in project documentation
    while true
        customersSem.Down () -- go to sleep if no customers
        
        --Wait to ensure the previous customer has left before printing new start message
        --customerGone.Up() can be found in Get_Haircut()
        customerGone.Down()

        mutexLock.Lock() -- Take mutual exclusion due to shared variable 'waiting'

        waiting = waiting - 1 -- take a customer from waiting to get a cut, free a chair

        --Print 'start' for status indicating barber is taking a customer, freed a chair
        --and is ready to start cutting hair.
        printStatus(" ","start",waiting)

        readyToCutSem.Up () -- signals to the next customer the haircut is ready to begin
        mutexLock.Unlock() -- gives up the mutex.

        Cut_Hair() -- routine to cut hair.
    endWhile
 endFunction

 function Customers(i: int)
    var j:int
    
    --Customer's routine
    --NOTE: This function was mostly supplied to us in project documentation.

    --Optional loop to add a wait time for each customer before they arrive
    --Uncomment to implement
--    for j = 1 to i * 200
--        --do nothing, just takes time for them to arrive
--    endFor

    for j = 1 to 10
       mutexLock.Lock() -- acquire mutex for shared variable 'waiting'
    
       --Print E for status 'enter' 
       printStatus(currentThread.name,"E",waiting)

       --Checks if there are any free chairs. If yes, sit down and increment chair counter.
       --If not, leave.
       if waiting < CHAIRS
          waiting = waiting + 1
       
          --Print S for status 'sit down'
          printStatus(currentThread.name,"S",waiting)
   
          customersSem.Up () --Wake up barber with semaphore increment
          mutexLock.Unlock() -- releases mutex
          readyToCutSem.Down() -- Go to sleep if the barber is busy
   
          Get_Haircut() -- hair cut routine

       else -- No chairs are available
          -- Print L for status 'leave'
          printStatus(currentThread.name,"L",waiting) 
          mutexLock.Unlock() -- release mutex
       endIf

       --Yield CPU to another thread when the customer leaves
       currentThread.Yield()
    endFor
 endFunction

 function Get_Haircut()
    var temp:int
    -- Haircut function for when the client is sitting in the chair getting clipped

    --Overview of the Get_Haircut routine. Lots of synchronization is going on to ensure
    --print output happens in the correct order. 
    --Customer prints status B to indicate they're getting their hair cut.
    --Customer waits for barber to print 'finish' (barberEnd.Down())
    --Customer prints status F to indicate they're done
    --Customer signals to barber when they have vacated the chair (customerGone.Up())

    --Make a copy of the shared variable 'waiting' to use in this print to avoid race
    --conditions with other threads. 
    mutexLock.Lock()
    temp=waiting
    mutexLock.Unlock()

    --Print B for status that the haircut has begun for the customer
    printStatus(currentThread.name,"B",temp)

    --Wait for the barber to signal that the haircut has ended
    barberEnd.Down()

    --Make a copy of the shared variable 'waiting' to use in this print to avoid race
    --conditions with other threads. 
    mutexLock.Lock()
    temp=waiting
    mutexLock.Unlock()

    --Print F for status that the customer has finished getting a hair cut and leaves
    printStatus(currentThread.name,"F",temp)
    
    customerGone.Up()

 endFunction

 function Cut_Hair()
    -- Barber's hair cut function to go through process of cutting a customer's hair
    
    --Overview of the Cut_Hair routine. Lots of synchronization is going on to ensure
    --print output happens in the correct order.
    --Barber executes a series of yields to simulate time spent on a hair cut
    --Barber prints 'finish' to incidate the haircut is done
    --Barber signals customer the haircut is done (barberEnd.Up())
    --
    --NOTE: If barber didn't yield, we would wait until signaled from customer that
    --they had printed status B before barber printed status 'finish'

    var i,temp: int

    --Add in some Yield to simulate the time it takes to cut  hair
    --Adjust to add more or fewer yields.
    for i = 1 to 20
         -- Uncomment to add + indicates when a yield occurs.  
       -- print("+")
       currentThread.Yield()
    endFor

    --Make a copy of the shared variable 'waiting' to use in this print to avoid race
    --conditions with other threads. 
    mutexLock.Lock()
    temp=waiting
    mutexLock.Unlock()
 
    --Print 'finished' for status when the barber has finished cutting hair
    printStatus(" ","finish",temp)  
    
    --This semaphore is used to synchronize with the customer. We want the barber to print
    --"finish" before the customer prints "F"
    barberEnd.Up()

 endFunction

 function printStatus(offset:String, text:String, chairsFull:int)
    --This function is used by all the thread to print status information.
    --'offset' will be the appropriate number of spaces
    --'text' is the text to be printed after offset
    --'chairsFull' is number of occupied chairs at time of printing, used to avoid
    -- synchronization issues with shared variable 'waiting'
    -- Status key:
    -- ----------
    -- start  -- Barber is ready to start cutting hair and has freed a chair
    -- finish -- Barber has finished cutting hair
    -- E      -- Customer has entered the store
    -- S      -- Customer has found a seat and has occuped it
    -- L      -- Customer has found no free chairs and has left the store
    -- B      -- Customer has started getting a hair cut
    -- F      -- Customer has finished getting a hair cut and will leave.
    -- X      -- Occupied chair
    -- -      -- Unoccupied chair
    --
   
    var k:int

    printLock.Lock() -- acquires printer lock mutex

    --Prints an X to indicate an occupied chair
    for k = 1 to chairsFull
        print("X")
    endFor
    
    --Prints a - to indicate a vacant chair
    for k = 1 to CHAIRS - chairsFull
        print ("-")
    endFor
    --print offset, text, and a newline.
    print(offset)
    print(text)
    nl()
    
    printLock.Unlock() -- releases printer lock mutex.
 endFunction

 ---------------------------  Gaming Parlor -------------------------------
 --
 --  Here is the gaming parlor problem. This makes use of a monitor to ensure
 --  mutual exculsion as well as to handle several condition variables to use
 --  for communication between threads to deal with synchronization. 
 --
 --------------------------------------------------------------------------

   var
    --An array of threads for our gamers
    gamersArray: array [8] of Thread = new array of Thread {8 of new Thread }
    --An instance of our dice Monitor: see behavior of DiceMonitor below
    mon: DiceMonitor = new DiceMonitor
     
function GamingParlor()
    --Main routine for GamingParlor problem

    print("Gaming Parlor Problem\n\n")
    mon.Init()
 
    -- Create gambler threads
    gamersArray[0].Init ("Group A")
    gamersArray[1].Init ("Group B")
    gamersArray[2].Init ("Group C")
    gamersArray[3].Init ("Group D")
    gamersArray[4].Init ("Group E")
    gamersArray[5].Init ("Group F")
    gamersArray[6].Init ("Group G")
    gamersArray[7].Init ("Group H")

    -- Assign different groups different dice needs
    gamersArray[0].Fork(Gamers,4) -- Backgammon
    gamersArray[1].Fork(Gamers,4) -- Backgammon
    gamersArray[2].Fork(Gamers,5) -- Risk
    gamersArray[3].Fork(Gamers,5) -- Risk
    gamersArray[4].Fork(Gamers,2) -- Monopoly
    gamersArray[5].Fork(Gamers,2) -- Monopoly
    gamersArray[6].Fork(Gamers,1) -- Pictionary
    gamersArray[7].Fork(Gamers,1) -- Pictionary

 endFunction
 
 function Gamers(i:int)
   -- Routine that each Gamer thread will execute
   var j:int

   --Loop for each gamer to play multiple times. 
   for j = 1 to 5
      mon.Request(i) -- Request dice
      currentThread.Yield () -- yield thread for play-time
      mon.Return(i) -- return dice
      currentThread.Yield () -- yield thread to give other threads control
   endFor
 endFunction

 -- Dice Monitor Class
 behavior DiceMonitor
   method Init()
      diceLock = new Mutex -- Monitor mutex
      first = new Condition -- Condition variable for first gamer in line
      rest = new Condition -- condition variable for the rest of the gamers in line
      numWaiting = 0 -- How many groups are currently waiting
      totalDice = 8 -- total dice pool
      currentDice = 8 -- current dice pool

      --Initializations
      diceLock.Init()
      first.Init ()
      rest.Init ()
   endMethod

   method Print(text: String, num: int)
      --Print method for use across the Monitor. It will print Thread name followed by text 
      -- followed by the number of dice available.
      --Text will be one of: 'requests', 'proceeds with', 'releases and adds back'
      print (currentThread.name)
      print (" ")
      print (text)
      print (" ")
      printInt (num)
      nl()
      print ("-----------------------------Number of dice available = ")
      printInt (currentDice)
      nl()
   endMethod

   method Request(numberOfDice: int)
      -- Method to request dice. The bulk of work goes on in here.
      
      diceLock.Lock () -- Locking Monitor
 
      -- Print message
      self.Print("requests",numberOfDice)
 
      --Error checking for requesting too many dice
      if numberOfDice > totalDice
         FatalError ("Error! Requesting more dice than total available!")
      endIf

      --Incrementing number of groups waiting
      numWaiting = numWaiting + 1

      --If there's more than one group, get in the queue for 'the rest' and release lock using
      --condition rest.Wait()
      if numWaiting > 1
         rest.Wait(&diceLock) 
      endIf

      -- Once we're here, we're the front of the line and will enter a while-loop
      -- until the appropriate number of dice to be freed up by entering the first queue
      -- Only one thread should be in the first queue. This ensures that requests for a large
      -- number of dice don't get starved by requests for smaller number of dice that could 
      -- meet the condition.
      --Queue is entered via the condition first.wait()
      while numberOfDice > currentDice
          first.Wait(&diceLock)
      endWhile

      --At this point, the current thread will hold the monitor lock and will be ensured that
      --there are enough dice available for their request.

      -- reduce the current number of dice by the number of dice requested
      currentDice = currentDice - numberOfDice

      -- reduce the number of groups waiting. By this point the first group has the dice they need
      numWaiting = numWaiting -1

      -- Signale 'the rest' list that they are free to check for dice.
      rest.Signal(&diceLock)

      -- print message that they are proceeding with their dice.
      self.Print("proceeds with",numberOfDice)

      diceLock.Unlock () -- release mutex
   endMethod

   method Return(numberOfDice: int)
      -- This is the method to return dice to the shared pool
      diceLock.Lock () -- acquire monitor mutex
     
      -- replace dice into the pool
      currentDice = currentDice + numberOfDice

      -- Print message indication the dice have been returned
      self.Print("releases and adds back", numberOfDice)

      -- Alert the group in the front of the line (in the first queue) that more dice
      -- are available and they are free to check if there are enough available to proceed.
      first.Signal(&diceLock)

      diceLock.Unlock() -- release mutex
   endMethod

 endBehavior -- End of Monitor class

endCode

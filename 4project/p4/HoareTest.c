----------------------------  Gaming Parlor Redux  --------------------------------
--  This is a modified Gaming Parlor problem to test the Hoare semantics of the
--  new condition ConditionHoare. Rather than every group requesting variable number
--  of dice (which still necessitate a while loop), every group requests 1 resource/die
--  The total number of dice is reduced to 4 to ensure a scarcity and that groups will
--  be forced to wait for signals. In this way we can see that the proper group goes
--  next and is woken up immediately (and given the mutex lock). We know that the 
--  condition will hold, since nothing else will have modified it in the meanwhile. 
--  Also, note that the thread that .Signal()s will print prior to the .Signal(), so that
--  this activity (printing) won't be interrupted by the immediate exectution of the 
--  awakened thread. 
--
--  GamingParlor() -- sets the groups up and intitalizes the monitor
--  Gamers (dice: int) -- Starts the groups through their process of trying to 
--                        acquire resources. Activates the Monitor 
--  
--
    var
      gamersArray: array [8] of Thread = new array of Thread {8 of new Thread}
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

    -- All groups request 1 resource/die to make it easy to test the 
    -- Hoare semantics. 
    gamersArray[0].Fork(Gamers,1) -- Backgammon
    gamersArray[1].Fork(Gamers,1) -- Backgammon
    gamersArray[2].Fork(Gamers,1) -- Risk
    gamersArray[3].Fork(Gamers,1) -- Risk
    gamersArray[4].Fork(Gamers,1) -- Monopoly
    gamersArray[5].Fork(Gamers,1) -- Monopoly
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

 --------------------------------  Dice Monitor Class  -----------------------
 behavior DiceMonitor


   ------------------  DiceMonitor . Init  ------------------
   --   Initializes the dice monitor class
   --
   method Init()
      diceLock = new Mutex -- Monitor mutex
      waiting = new ConditionHoare -- Condition variable for the gamers in line
      totalDice = 4 -- total dice pool, reduced to ensure scarcity
      currentDice = 4 -- current dice pool, reduced to ensure scarcity.

      --Initializations
      diceLock.Init()
      waiting.Init()
   endMethod

   --------------------  DiceMonitor . Print  ---------------
   --  Sets up the print method used in this gaming parlor
   --

   method Print(text: String, num: int)
      --Print method for use across the Monitor. It will print Thread name 
      -- followed by 'text'
      -- followed by the number of dice available.
      -- 'Text' will be one of: 'requests', 'proceeds with', 'releases and adds back'
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
 
      
      self.Print("requests",numberOfDice)
      
      --Here we test out our Hoare Semantics. 
      if numberOfDice > currentDice
         waiting.Wait(&diceLock) 
      endIf
      
      --  At this point, the current thread will hold the monitor lock and will 
      --  be ensured that there are enough dice/resources available for their request.
      --  This thread should be the next thread to execute. This will be noticed by the 
      --  'proceeds with' message occuring directly after the previous thread's 'releases
      --  and adds back' message.

      -- reduce the current number of dice/resources by the number of dice requested
      currentDice = currentDice - numberOfDice

      self.Print("proceeds with",numberOfDice)

      diceLock.Unlock () -- release mutex
   endMethod

   method Return(numberOfDice: int)
      -- This is the method to return dice to the shared pool
      diceLock.Lock () -- acquire monitor mutex
     
      -- replace dice into the pool
      currentDice = currentDice + numberOfDice

      -- Print message indication the dice have been returned
      -- NOTE it must do this prior to .Signal() so that the matching Hoare Semantic .Wait()
      -- doesn't take control before this thread gets a chance to Print(). 
      self.Print("releases and adds back", numberOfDice)

      -- Alert the next group that more dice/resources are available
      waiting.Signal(&diceLock)

      diceLock.Unlock() -- release mutex
   endMethod

 endBehavior -- End of Monitor class

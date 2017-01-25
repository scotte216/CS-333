header Main


  -- OS Class: Project 3
  -- Scott Ewing

  uses System, Thread, Synch

  functions
    main ()

  class DiceMonitor
    superclass Object
    fields
      diceLock: Mutex
      first: Condition
      rest: Condition
      numWaiting: int
      totalDice: int
      currentDice: int

    methods
      Init ()
      Print (text: String, num: int)
      Request(numberOfDice: int)
      Return (numberOfDice: int)
      

  endClass

endHeader

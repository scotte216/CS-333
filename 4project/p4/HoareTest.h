  class DiceMonitor
    superclass Object
    fields
      diceLock: Mutex
      waiting: ConditionHoare
      totalDice: int
      currentDice: int

    methods
      Init ()
      Print (text: String, num: int)
      Request(numberOfDice: int)
      Return (numberOfDice: int)
      

  endClass

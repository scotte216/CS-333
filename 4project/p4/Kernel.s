! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_ConditionHoare
	.export	_Method_P_Kernel_ConditionHoare_1
	.export	_Method_P_Kernel_ConditionHoare_2
	.export	_Method_P_Kernel_ConditionHoare_3
	.export	_Method_P_Kernel_ConditionHoare_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	76
	.align
! String constants
_StringConst_126:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_125:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_124:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_122:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_121:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_119:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_118:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_116:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_115:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_114:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_113:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_112:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_111:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_110:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_109:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_108:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_107:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_106:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_105:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_104:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_103:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_102:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_101:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_100:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_99:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_98:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_97:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_96:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_95:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_94:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_93:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_92:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_91:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_90:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_89:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_88:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_87:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_86:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_85:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_84:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_83:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_82:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_81:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_80:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_79:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_78:
	.word	20			! length
	.ascii	"Thread ManagerThread"
	.align
_StringConst_77:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_76:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_75:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_74:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_73:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_72:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_71:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_70:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_68:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_67:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_66:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_65:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_64:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_63:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_62:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_61:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_60:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_59:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_58:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_57:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_56:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_55:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_54:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_53:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_52:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_51:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_50:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_49:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_48:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_47:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_46:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_45:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_42:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_41:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_40:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_39:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x8dd14017,r4		! myHashVal = -1915666409
	cmp	r3,r4
	be	_Label_131
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_131:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_132
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_132
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_132
_Label_132:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_1820:
	push	r0
	sub	r1,1,r1
	bne	_Label_1820
	mov	8,r13		! source line 8
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_133 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_133  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	16,r13		! source line 16
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_1821:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1821
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0SE",r10
!   _temp_137 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_138 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_137  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   _temp_139 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_140 = _temp_139 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_140 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_1822:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1822
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_142 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_143 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_142  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_144 = _function_130_IdleFunction
	set	_function_130_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_145 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_144  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	28,r13		! source line 28
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_146
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_147
	.word	-12
	.word	4
	.word	_Label_148
	.word	-16
	.word	4
	.word	_Label_149
	.word	-20
	.word	4
	.word	_Label_150
	.word	-24
	.word	4
	.word	_Label_151
	.word	-28
	.word	4
	.word	_Label_152
	.word	-32
	.word	4
	.word	_Label_153
	.word	-36
	.word	4
	.word	_Label_154
	.word	-40
	.word	4
	.word	_Label_155
	.word	-44
	.word	4
	.word	_Label_156
	.word	-48
	.word	4
	.word	_Label_157
	.word	-52
	.word	4
	.word	_Label_158
	.word	-56
	.word	4
	.word	_Label_159
	.word	-60
	.word	4
	.word	0
_Label_146:
	.ascii	"InitializeScheduler\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_130_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_130_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1823:
	push	r0
	sub	r1,1,r1
	bne	_Label_1823
	mov	33,r13		! source line 33
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0WH",r10
_Label_160:
!	jmp	_Label_161
_Label_161:
	mov	43,r13		! source line 43
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	44,r13		! source line 44
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	45,r13		! source line 45
	mov	"\0\0IF",r10
	mov	45,r13		! source line 45
	mov	"\0\0SE",r10
!   _temp_165 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_163 else goto _Label_164
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_164
	jmp	_Label_163
_Label_163:
! THEN...
	mov	46,r13		! source line 46
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_166
_Label_164:
! ELSE...
	mov	48,r13		! source line 48
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_166:
! END WHILE...
	jmp	_Label_160
_Label_162:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_130_IdleFunction:
	.word	_sourceFileName
	.word	_Label_167
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_168
	.word	8
	.word	4
	.word	_Label_169
	.word	-12
	.word	4
	.word	_Label_170
	.word	-16
	.word	4
	.word	0
_Label_167:
	.ascii	"IdleFunction\0"
	.align
_Label_168:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_170:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_1824:
	push	r0
	sub	r1,1,r1
	bne	_Label_1824
	mov	55,r13		! source line 55
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_173 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_173 ) then goto _Label_172		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_172
!	jmp	_Label_171
_Label_171:
! THEN...
	mov	72,r13		! source line 72
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_175 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_175 [0 ] into _temp_176
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_174 = _temp_176		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_174  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_172:
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_177 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_177 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	81,r13		! source line 81
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0WH",r10
_Label_178:
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_182 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_181  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_181 then goto _Label_180 else goto _Label_179
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_179
	jmp	_Label_180
_Label_179:
	mov	85,r13		! source line 85
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0AS",r10
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_183 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_184 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_178
_Label_180:
! IF STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_187 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_187 ) then goto _Label_186		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_186
!	jmp	_Label_185
_Label_185:
! THEN...
	mov	91,r13		! source line 91
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_189 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_189 [0 ] into _temp_190
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_188 = _temp_190		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_188  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	91,r13		! source line 91
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_192 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_191 = *_temp_192  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_191) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_193 = _temp_191 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_186:
! RETURN STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_194
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_195
	.word	8
	.word	4
	.word	_Label_196
	.word	-16
	.word	4
	.word	_Label_197
	.word	-20
	.word	4
	.word	_Label_198
	.word	-24
	.word	4
	.word	_Label_199
	.word	-28
	.word	4
	.word	_Label_200
	.word	-32
	.word	4
	.word	_Label_201
	.word	-36
	.word	4
	.word	_Label_202
	.word	-40
	.word	4
	.word	_Label_203
	.word	-44
	.word	4
	.word	_Label_204
	.word	-48
	.word	4
	.word	_Label_205
	.word	-52
	.word	4
	.word	_Label_206
	.word	-9
	.word	1
	.word	_Label_207
	.word	-56
	.word	4
	.word	_Label_208
	.word	-60
	.word	4
	.word	_Label_209
	.word	-64
	.word	4
	.word	_Label_210
	.word	-68
	.word	4
	.word	_Label_211
	.word	-72
	.word	4
	.word	_Label_212
	.word	-76
	.word	4
	.word	_Label_213
	.word	-80
	.word	4
	.word	0
_Label_194:
	.ascii	"Run\0"
	.align
_Label_195:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_206:
	.byte	'C'
	.ascii	"_temp_181\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_177\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_176\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_175\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_212:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_213:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_1825:
	push	r0
	sub	r1,1,r1
	bne	_Label_1825
	mov	98,r13		! source line 98
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_214 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_214  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_215 = _function_129_ThreadPrintShort
	set	_function_129_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_216 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_215  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_217
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_218
	.word	-12
	.word	4
	.word	_Label_219
	.word	-16
	.word	4
	.word	_Label_220
	.word	-20
	.word	4
	.word	_Label_221
	.word	-24
	.word	4
	.word	0
_Label_217:
	.ascii	"PrintReadyList\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_221:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_1826:
	push	r0
	sub	r1,1,r1
	bne	_Label_1826
	mov	113,r13		! source line 113
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	125,r13		! source line 125
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_222 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_222  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_224 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_223 = *_temp_224  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_223  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	127,r13		! source line 127
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_225 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_225  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	129,r13		! source line 129
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_226
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_227
	.word	-12
	.word	4
	.word	_Label_228
	.word	-16
	.word	4
	.word	_Label_229
	.word	-20
	.word	4
	.word	_Label_230
	.word	-24
	.word	4
	.word	_Label_231
	.word	-28
	.word	4
	.word	_Label_232
	.word	-32
	.word	4
	.word	0
_Label_226:
	.ascii	"ThreadStartMain\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_231:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_232:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_1827:
	push	r0
	sub	r1,1,r1
	bne	_Label_1827
	mov	134,r13		! source line 134
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	145,r13		! source line 145
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   _temp_233 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_234 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_234  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	152,r13		! source line 152
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_235
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_236
	.word	-12
	.word	4
	.word	_Label_237
	.word	-16
	.word	4
	.word	_Label_238
	.word	-20
	.word	4
	.word	0
_Label_235:
	.ascii	"ThreadFinish\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_238:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_1828:
	push	r0
	sub	r1,1,r1
	bne	_Label_1828
	mov	157,r13		! source line 157
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_239 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_241		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_241
!	jmp	_Label_240
_Label_240:
! THEN...
	mov	168,r13		! source line 168
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_242 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_242  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_244 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_243 = *_temp_244  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_243  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_241:
! CALL STATEMENT...
!   _temp_245 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_245  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_246 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_246  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_247 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_247  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_248
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_249
	.word	8
	.word	4
	.word	_Label_250
	.word	-12
	.word	4
	.word	_Label_251
	.word	-16
	.word	4
	.word	_Label_252
	.word	-20
	.word	4
	.word	_Label_253
	.word	-24
	.word	4
	.word	_Label_254
	.word	-28
	.word	4
	.word	_Label_255
	.word	-32
	.word	4
	.word	_Label_256
	.word	-36
	.word	4
	.word	_Label_257
	.word	-40
	.word	4
	.word	0
_Label_248:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_249:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_257:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_1829:
	push	r0
	sub	r1,1,r1
	bne	_Label_1829
	mov	180,r13		! source line 180
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	193,r13		! source line 193
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_259		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_259
!	jmp	_Label_258
_Label_258:
! THEN...
	mov	196,r13		! source line 196
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	197,r13		! source line 197
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_260
_Label_259:
! ELSE...
	mov	199,r13		! source line 199
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	200,r13		! source line 200
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_260:
! RETURN STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_261
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_262
	.word	8
	.word	4
	.word	_Label_263
	.word	-12
	.word	4
	.word	0
_Label_261:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_262:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_263:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_129_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_129_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1830:
	push	r0
	sub	r1,1,r1
	bne	_Label_1830
	mov	773,r13		! source line 773
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	780,r13		! source line 780
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	781,r13		! source line 781
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_267		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_267
!   _temp_266 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_268
_Label_267:
!   _temp_266 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_268:
!   if _temp_266 then goto _Label_265 else goto _Label_264
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_264
	jmp	_Label_265
_Label_264:
! THEN...
	mov	782,r13		! source line 782
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_269 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_269  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_265:
! CALL STATEMENT...
!   _temp_270 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_270  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	785,r13		! source line 785
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_272 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_271 = *_temp_272  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_271  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_273 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_273  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	787,r13		! source line 787
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	788,r13		! source line 788
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_282 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_281 = *_temp_282  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_276
	cmp	r1,2
	be	_Label_277
	cmp	r1,3
	be	_Label_278
	cmp	r1,4
	be	_Label_279
	cmp	r1,5
	be	_Label_280
	jmp	_Label_274
! CASE 1...
_Label_276:
! CALL STATEMENT...
!   _temp_283 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_283  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	790,r13		! source line 790
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0BR",r10
	jmp	_Label_275
! CASE 2...
_Label_277:
! CALL STATEMENT...
!   _temp_284 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	793,r13		! source line 793
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0BR",r10
	jmp	_Label_275
! CASE 3...
_Label_278:
! CALL STATEMENT...
!   _temp_285 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_285  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	796,r13		! source line 796
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0BR",r10
	jmp	_Label_275
! CASE 4...
_Label_279:
! CALL STATEMENT...
!   _temp_286 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	799,r13		! source line 799
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0BR",r10
	jmp	_Label_275
! CASE 5...
_Label_280:
! CALL STATEMENT...
!   _temp_287 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	802,r13		! source line 802
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0BR",r10
	jmp	_Label_275
! DEFAULT CASE...
_Label_274:
! CALL STATEMENT...
!   _temp_288 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	805,r13		! source line 805
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_275:
! CALL STATEMENT...
!   _temp_289 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_289  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	807,r13		! source line 807
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_290 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_291 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_291  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	810,r13		! source line 810
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	812,r13		! source line 812
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_129_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_292
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_293
	.word	8
	.word	4
	.word	_Label_294
	.word	-16
	.word	4
	.word	_Label_295
	.word	-20
	.word	4
	.word	_Label_296
	.word	-24
	.word	4
	.word	_Label_297
	.word	-28
	.word	4
	.word	_Label_298
	.word	-32
	.word	4
	.word	_Label_299
	.word	-36
	.word	4
	.word	_Label_300
	.word	-40
	.word	4
	.word	_Label_301
	.word	-44
	.word	4
	.word	_Label_302
	.word	-48
	.word	4
	.word	_Label_303
	.word	-52
	.word	4
	.word	_Label_304
	.word	-56
	.word	4
	.word	_Label_305
	.word	-60
	.word	4
	.word	_Label_306
	.word	-64
	.word	4
	.word	_Label_307
	.word	-68
	.word	4
	.word	_Label_308
	.word	-72
	.word	4
	.word	_Label_309
	.word	-76
	.word	4
	.word	_Label_310
	.word	-9
	.word	1
	.word	_Label_311
	.word	-80
	.word	4
	.word	0
_Label_292:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_293:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_310:
	.byte	'C'
	.ascii	"_temp_266\0"
	.align
_Label_311:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_128_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_128_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1831:
	push	r0
	sub	r1,1,r1
	bne	_Label_1831
	mov	1135,r13		! source line 1135
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_312 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_312  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1139,r13		! source line 1139
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1140,r13		! source line 1140
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_128_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_313
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_314
	.word	8
	.word	4
	.word	_Label_315
	.word	-12
	.word	4
	.word	0
_Label_313:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_314:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_1832:
	push	r0
	sub	r1,1,r1
	bne	_Label_1832
	mov	1145,r13		! source line 1145
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_316 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_316  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1151,r13		! source line 1151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_317
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_318
	.word	8
	.word	4
	.word	_Label_319
	.word	-12
	.word	4
	.word	0
_Label_317:
	.ascii	"ProcessFinish\0"
	.align
_Label_318:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_1833:
	push	r0
	sub	r1,1,r1
	bne	_Label_1833
	mov	1692,r13		! source line 1692
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1702,r13		! source line 1702
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_320
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_320:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	2,r1
_Label_1834:
	push	r0
	sub	r1,1,r1
	bne	_Label_1834
	mov	1710,r13		! source line 1710
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_321 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_321  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1720,r13		! source line 1720
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1720,r13		! source line 1720
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_322
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_323
	.word	-12
	.word	4
	.word	0
_Label_322:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1732,r13		! source line 1732
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1741,r13		! source line 1741
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1741,r13		! source line 1741
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_324
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_324:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1835:
	push	r0
	sub	r1,1,r1
	bne	_Label_1835
	mov	1746,r13		! source line 1746
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_325 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1753,r13		! source line 1753
	mov	"\0\0CA",r10
	call	_function_127_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1753,r13		! source line 1753
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_326
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_327
	.word	-12
	.word	4
	.word	0
_Label_326:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_327:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1836:
	push	r0
	sub	r1,1,r1
	bne	_Label_1836
	mov	1758,r13		! source line 1758
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1764,r13		! source line 1764
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_328 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1765,r13		! source line 1765
	mov	"\0\0CA",r10
	call	_function_127_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_329
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_330
	.word	-12
	.word	4
	.word	0
_Label_329:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_330:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1837:
	push	r0
	sub	r1,1,r1
	bne	_Label_1837
	mov	1770,r13		! source line 1770
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1776,r13		! source line 1776
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_331 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1777,r13		! source line 1777
	mov	"\0\0CA",r10
	call	_function_127_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1777,r13		! source line 1777
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_332
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_333
	.word	-12
	.word	4
	.word	0
_Label_332:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_333:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1838:
	push	r0
	sub	r1,1,r1
	bne	_Label_1838
	mov	1782,r13		! source line 1782
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_334 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1789,r13		! source line 1789
	mov	"\0\0CA",r10
	call	_function_127_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_335
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_336
	.word	-12
	.word	4
	.word	0
_Label_335:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1839:
	push	r0
	sub	r1,1,r1
	bne	_Label_1839
	mov	1794,r13		! source line 1794
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_337 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1801,r13		! source line 1801
	mov	"\0\0CA",r10
	call	_function_127_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1801,r13		! source line 1801
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_338
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_339
	.word	-12
	.word	4
	.word	0
_Label_338:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1840:
	push	r0
	sub	r1,1,r1
	bne	_Label_1840
	mov	1806,r13		! source line 1806
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1812,r13		! source line 1812
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_340 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1813,r13		! source line 1813
	mov	"\0\0CA",r10
	call	_function_127_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1813,r13		! source line 1813
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_341
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_342
	.word	-12
	.word	4
	.word	0
_Label_341:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1841:
	push	r0
	sub	r1,1,r1
	bne	_Label_1841
	mov	1818,r13		! source line 1818
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_343 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_343  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1825,r13		! source line 1825
	mov	"\0\0CA",r10
	call	_function_127_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_344
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_345
	.word	-12
	.word	4
	.word	0
_Label_344:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_127_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_127_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1842:
	push	r0
	sub	r1,1,r1
	bne	_Label_1842
	mov	1830,r13		! source line 1830
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_346 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1835,r13		! source line 1835
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1836,r13		! source line 1836
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_347 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_347  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1837,r13		! source line 1837
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1840,r13		! source line 1840
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_351 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_350 = *_temp_351  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_350 == 0 then goto _Label_349		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_349
!	jmp	_Label_348
_Label_348:
! THEN...
	mov	1841,r13		! source line 1841
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_353 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_352 = *_temp_353  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_352) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_354
_Label_349:
! ELSE...
	mov	1843,r13		! source line 1843
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_355 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1843,r13		! source line 1843
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_354:
! SEND STATEMENT...
	mov	1845,r13		! source line 1845
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1851,r13		! source line 1851
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_127_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_356
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_357
	.word	8
	.word	4
	.word	_Label_358
	.word	-12
	.word	4
	.word	_Label_359
	.word	-16
	.word	4
	.word	_Label_360
	.word	-20
	.word	4
	.word	_Label_361
	.word	-24
	.word	4
	.word	_Label_362
	.word	-28
	.word	4
	.word	_Label_363
	.word	-32
	.word	4
	.word	_Label_364
	.word	-36
	.word	4
	.word	0
_Label_356:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_357:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_1843:
	push	r0
	sub	r1,1,r1
	bne	_Label_1843
	mov	1856,r13		! source line 1856
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1863,r13		! source line 1863
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1877,r13		! source line 1877
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1844
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_365
_Label_1844:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_365
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_365
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_379,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_379:
	jmp	_Label_371	! 1:	
	jmp	_Label_378	! 2:	
	jmp	_Label_368	! 3:	
	jmp	_Label_367	! 4:	
	jmp	_Label_370	! 5:	
	jmp	_Label_369	! 6:	
	jmp	_Label_372	! 7:	
	jmp	_Label_373	! 8:	
	jmp	_Label_374	! 9:	
	jmp	_Label_375	! 10:	
	jmp	_Label_376	! 11:	
	jmp	_Label_377	! 12:	
! CASE 4...
_Label_367:
! RETURN STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0RE",r10
!   Call the function
	mov	1879,r13		! source line 1879
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_380  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_380  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_368:
! CALL STATEMENT...
!   Call the function
	mov	1881,r13		! source line 1881
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1882,r13		! source line 1882
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_369:
! RETURN STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1884,r13		! source line 1884
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_381  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_381  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_370:
! RETURN STATEMENT...
	mov	1886,r13		! source line 1886
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1886,r13		! source line 1886
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_382  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_382  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_371:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1888,r13		! source line 1888
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_372:
! RETURN STATEMENT...
	mov	1891,r13		! source line 1891
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1891,r13		! source line 1891
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_383  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_383  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_373:
! RETURN STATEMENT...
	mov	1893,r13		! source line 1893
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1893,r13		! source line 1893
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_384  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_384  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_374:
! RETURN STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1895,r13		! source line 1895
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_385  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_385  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_375:
! RETURN STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1897,r13		! source line 1897
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_386  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_386  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_376:
! RETURN STATEMENT...
	mov	1899,r13		! source line 1899
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1899,r13		! source line 1899
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_387  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_387  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_377:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1902,r13		! source line 1902
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_378:
! CALL STATEMENT...
!   Call the function
	mov	1904,r13		! source line 1904
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_365:
! CALL STATEMENT...
!   _temp_388 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1907,r13		! source line 1907
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1909,r13		! source line 1909
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_389 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_389  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1910,r13		! source line 1910
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_366:
! RETURN STATEMENT...
	mov	1912,r13		! source line 1912
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_390
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_391
	.word	8
	.word	4
	.word	_Label_392
	.word	12
	.word	4
	.word	_Label_393
	.word	16
	.word	4
	.word	_Label_394
	.word	20
	.word	4
	.word	_Label_395
	.word	24
	.word	4
	.word	_Label_396
	.word	-12
	.word	4
	.word	_Label_397
	.word	-16
	.word	4
	.word	_Label_398
	.word	-20
	.word	4
	.word	_Label_399
	.word	-24
	.word	4
	.word	_Label_400
	.word	-28
	.word	4
	.word	_Label_401
	.word	-32
	.word	4
	.word	_Label_402
	.word	-36
	.word	4
	.word	_Label_403
	.word	-40
	.word	4
	.word	_Label_404
	.word	-44
	.word	4
	.word	_Label_405
	.word	-48
	.word	4
	.word	0
_Label_390:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_391:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_392:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_393:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_394:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_395:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_389\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1917,r13		! source line 1917
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_406
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_407
	.word	8
	.word	4
	.word	0
_Label_406:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_407:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	1923,r13		! source line 1923
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_408
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_408:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1929,r13		! source line 1929
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1929,r13		! source line 1929
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_409
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_409:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	1935,r13		! source line 1935
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1937,r13		! source line 1937
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_410
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_410:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	1942,r13		! source line 1942
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_411
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_412
	.word	8
	.word	4
	.word	0
_Label_411:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_412:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	1949,r13		! source line 1949
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_413
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_414
	.word	8
	.word	4
	.word	0
_Label_413:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_414:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	1956,r13		! source line 1956
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_415
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_416
	.word	8
	.word	4
	.word	0
_Label_415:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_416:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	1963,r13		! source line 1963
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1965,r13		! source line 1965
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_417
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_418
	.word	8
	.word	4
	.word	0
_Label_417:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_418:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	1970,r13		! source line 1970
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1972,r13		! source line 1972
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_419
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_420
	.word	8
	.word	4
	.word	_Label_421
	.word	12
	.word	4
	.word	_Label_422
	.word	16
	.word	4
	.word	0
_Label_419:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_420:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_421:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_422:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	1977,r13		! source line 1977
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_423
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_424
	.word	8
	.word	4
	.word	_Label_425
	.word	12
	.word	4
	.word	_Label_426
	.word	16
	.word	4
	.word	0
_Label_423:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_424:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_425:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_426:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	1984,r13		! source line 1984
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1986,r13		! source line 1986
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_427
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_428
	.word	8
	.word	4
	.word	_Label_429
	.word	12
	.word	4
	.word	0
_Label_427:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_428:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_429:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	1991,r13		! source line 1991
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_430
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_431
	.word	8
	.word	4
	.word	0
_Label_430:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_431:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_432
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_432:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_433
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_433:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_1845:
	push	r0
	sub	r1,1,r1
	bne	_Label_1845
	mov	231,r13		! source line 231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_435		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_435
!	jmp	_Label_434
_Label_434:
! THEN...
	mov	233,r13		! source line 233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_436 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_436  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	233,r13		! source line 233
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_435:
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_438
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_439
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_440
	.word	12
	.word	4
	.word	_Label_441
	.word	-12
	.word	4
	.word	_Label_442
	.word	-16
	.word	4
	.word	0
_Label_438:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_439:
	.ascii	"Pself\0"
	.align
_Label_440:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_1846:
	push	r0
	sub	r1,1,r1
	bne	_Label_1846
	mov	241,r13		! source line 241
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_444		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_444
!	jmp	_Label_443
_Label_443:
! THEN...
	mov	247,r13		! source line 247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_445 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_445  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	247,r13		! source line 247
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_444:
! ASSIGNMENT STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_447		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_447
!	jmp	_Label_446
_Label_446:
! THEN...
	mov	251,r13		! source line 251
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
!   _temp_448 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_449 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_450 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_447:
! ASSIGNMENT STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	255,r13		! source line 255
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_451
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_452
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_453
	.word	-12
	.word	4
	.word	_Label_454
	.word	-16
	.word	4
	.word	_Label_455
	.word	-20
	.word	4
	.word	_Label_456
	.word	-24
	.word	4
	.word	_Label_457
	.word	-28
	.word	4
	.word	_Label_458
	.word	-32
	.word	4
	.word	0
_Label_451:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_452:
	.ascii	"Pself\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_457:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_458:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_1847:
	push	r0
	sub	r1,1,r1
	bne	_Label_1847
	mov	260,r13		! source line 260
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	263,r13		! source line 263
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_460		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_460
!	jmp	_Label_459
_Label_459:
! THEN...
	mov	265,r13		! source line 265
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_461 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_461  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	265,r13		! source line 265
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_460:
! ASSIGNMENT STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_463		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_463
!	jmp	_Label_462
_Label_462:
! THEN...
	mov	269,r13		! source line 269
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   _temp_464 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_463:
! ASSIGNMENT STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	272,r13		! source line 272
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_465
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_466
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_467
	.word	-12
	.word	4
	.word	_Label_468
	.word	-16
	.word	4
	.word	_Label_469
	.word	-20
	.word	4
	.word	0
_Label_465:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_466:
	.ascii	"Pself\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_469:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_470
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_470:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_471
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_471:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_1848:
	push	r0
	sub	r1,1,r1
	bne	_Label_1848
	mov	295,r13		! source line 295
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_473
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_474
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_475
	.word	-12
	.word	4
	.word	0
_Label_473:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_474:
	.ascii	"Pself\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_1849:
	push	r0
	sub	r1,1,r1
	bne	_Label_1849
	mov	301,r13		! source line 301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_477		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_477
!	jmp	_Label_476
_Label_476:
! THEN...
	mov	305,r13		! source line 305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_478 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_478  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	305,r13		! source line 305
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_477:
! ASSIGNMENT STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	307,r13		! source line 307
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_482		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_482
!   _temp_481 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_483
_Label_482:
!   _temp_481 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_483:
!   if _temp_481 then goto _Label_480 else goto _Label_479
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_479
	jmp	_Label_480
_Label_479:
! THEN...
	mov	309,r13		! source line 309
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_484
_Label_480:
! ELSE...
	mov	311,r13		! source line 311
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   _temp_485 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_484:
! ASSIGNMENT STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	314,r13		! source line 314
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_486
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_487
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_488
	.word	-16
	.word	4
	.word	_Label_489
	.word	-9
	.word	1
	.word	_Label_490
	.word	-20
	.word	4
	.word	_Label_491
	.word	-24
	.word	4
	.word	0
_Label_486:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_487:
	.ascii	"Pself\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_489:
	.byte	'C'
	.ascii	"_temp_481\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_491:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_1850:
	push	r0
	sub	r1,1,r1
	bne	_Label_1850
	mov	319,r13		! source line 319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_493		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_493
!	jmp	_Label_492
_Label_492:
! THEN...
	mov	324,r13		! source line 324
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_494 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_494  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	324,r13		! source line 324
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_493:
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	326,r13		! source line 326
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0AS",r10
	mov	327,r13		! source line 327
	mov	"\0\0SE",r10
!   _temp_495 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_497		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_497
!	jmp	_Label_496
_Label_496:
! THEN...
	mov	329,r13		! source line 329
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_498 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_498 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0SE",r10
!   _temp_499 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_500
_Label_497:
! ELSE...
	mov	333,r13		! source line 333
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_500:
! ASSIGNMENT STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	335,r13		! source line 335
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_501
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_502
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_503
	.word	-12
	.word	4
	.word	_Label_504
	.word	-16
	.word	4
	.word	_Label_505
	.word	-20
	.word	4
	.word	_Label_506
	.word	-24
	.word	4
	.word	_Label_507
	.word	-28
	.word	4
	.word	_Label_508
	.word	-32
	.word	4
	.word	0
_Label_501:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_502:
	.ascii	"Pself\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_507:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_508:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_1851:
	push	r0
	sub	r1,1,r1
	bne	_Label_1851
	mov	340,r13		! source line 340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_511		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_511
!	jmp	_Label_510
_Label_510:
!   _temp_509 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_512
_Label_511:
!   _temp_509 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_512:
!   ReturnResult: _temp_509  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_513
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_514
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_515
	.word	-9
	.word	1
	.word	0
_Label_513:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_514:
	.ascii	"Pself\0"
	.align
_Label_515:
	.byte	'C'
	.ascii	"_temp_509\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_516
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_516:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_517
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_517:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_1852:
	push	r0
	sub	r1,1,r1
	bne	_Label_1852
	mov	381,r13		! source line 381
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_519
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_520
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_521
	.word	-12
	.word	4
	.word	0
_Label_519:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_520:
	.ascii	"Pself\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_1853:
	push	r0
	sub	r1,1,r1
	bne	_Label_1853
	mov	387,r13		! source line 387
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0IF",r10
	mov	390,r13		! source line 390
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_524  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_524 then goto _Label_523 else goto _Label_522
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_522
	jmp	_Label_523
_Label_522:
! THEN...
	mov	391,r13		! source line 391
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_525 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_525  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	391,r13		! source line 391
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_523:
! ASSIGNMENT STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	393,r13		! source line 393
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   _temp_526 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_527
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_528
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_529
	.word	12
	.word	4
	.word	_Label_530
	.word	-16
	.word	4
	.word	_Label_531
	.word	-20
	.word	4
	.word	_Label_532
	.word	-9
	.word	1
	.word	_Label_533
	.word	-24
	.word	4
	.word	0
_Label_527:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_528:
	.ascii	"Pself\0"
	.align
_Label_529:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_532:
	.byte	'C'
	.ascii	"_temp_524\0"
	.align
_Label_533:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_1854:
	push	r0
	sub	r1,1,r1
	bne	_Label_1854
	mov	403,r13		! source line 403
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0IF",r10
	mov	407,r13		! source line 407
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_536  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_536 then goto _Label_535 else goto _Label_534
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_534
	jmp	_Label_535
_Label_534:
! THEN...
	mov	408,r13		! source line 408
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_537 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_537  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	408,r13		! source line 408
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_535:
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	410,r13		! source line 410
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0AS",r10
	mov	411,r13		! source line 411
	mov	"\0\0SE",r10
!   _temp_538 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_540		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_540
!	jmp	_Label_539
_Label_539:
! THEN...
	mov	413,r13		! source line 413
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_541 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_541 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
!   _temp_542 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_540:
! ASSIGNMENT STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	416,r13		! source line 416
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_543
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_544
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_545
	.word	12
	.word	4
	.word	_Label_546
	.word	-16
	.word	4
	.word	_Label_547
	.word	-20
	.word	4
	.word	_Label_548
	.word	-24
	.word	4
	.word	_Label_549
	.word	-28
	.word	4
	.word	_Label_550
	.word	-9
	.word	1
	.word	_Label_551
	.word	-32
	.word	4
	.word	_Label_552
	.word	-36
	.word	4
	.word	0
_Label_543:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_544:
	.ascii	"Pself\0"
	.align
_Label_545:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_550:
	.byte	'C'
	.ascii	"_temp_536\0"
	.align
_Label_551:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_552:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_1855:
	push	r0
	sub	r1,1,r1
	bne	_Label_1855
	mov	421,r13		! source line 421
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0IF",r10
	mov	425,r13		! source line 425
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_555  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_555 then goto _Label_554 else goto _Label_553
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_553
	jmp	_Label_554
_Label_553:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_556 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_556  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	426,r13		! source line 426
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_554:
! ASSIGNMENT STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0WH",r10
_Label_557:
!	jmp	_Label_558
_Label_558:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_560 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_561
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_561
	jmp	_Label_562
_Label_561:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_559
! END IF...
_Label_562:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_563 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_563 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_564 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_557
_Label_559:
! ASSIGNMENT STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_565
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_566
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_567
	.word	12
	.word	4
	.word	_Label_568
	.word	-16
	.word	4
	.word	_Label_569
	.word	-20
	.word	4
	.word	_Label_570
	.word	-24
	.word	4
	.word	_Label_571
	.word	-28
	.word	4
	.word	_Label_572
	.word	-9
	.word	1
	.word	_Label_573
	.word	-32
	.word	4
	.word	_Label_574
	.word	-36
	.word	4
	.word	0
_Label_565:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_566:
	.ascii	"Pself\0"
	.align
_Label_567:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_560\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_572:
	.byte	'C'
	.ascii	"_temp_555\0"
	.align
_Label_573:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_574:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS ConditionHoare  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ConditionHoare:
	.word	_Label_575
	jmp	_Method_P_Kernel_ConditionHoare_1	! 4:	Init
	jmp	_Method_P_Kernel_ConditionHoare_2	! 8:	Wait
	jmp	_Method_P_Kernel_ConditionHoare_3	! 12:	Signal
	jmp	_Method_P_Kernel_ConditionHoare_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_575:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_576
	.word	_sourceFileName
	.word	163		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_ConditionHoare
	.word	_P_System_Object
	.word	0
_Label_576:
	.ascii	"ConditionHoare\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ConditionHoare_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ConditionHoare_1,r1
	push	r1
	mov	1,r1
_Label_1856:
	push	r0
	sub	r1,1,r1
	bne	_Label_1856
	mov	485,r13		! source line 485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ConditionHoare_1:
	.word	_sourceFileName
	.word	_Label_578
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_579
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_580
	.word	-12
	.word	4
	.word	0
_Label_578:
	.ascii	"ConditionHoare"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_579:
	.ascii	"Pself\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_ConditionHoare_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ConditionHoare_2,r1
	push	r1
	mov	6,r1
_Label_1857:
	push	r0
	sub	r1,1,r1
	bne	_Label_1857
	mov	490,r13		! source line 490
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0IF",r10
	mov	493,r13		! source line 493
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_583  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_583 then goto _Label_582 else goto _Label_581
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_581
	jmp	_Label_582
_Label_581:
! THEN...
	mov	494,r13		! source line 494
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_584 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_584  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	494,r13		! source line 494
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_582:
! ASSIGNMENT STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	497,r13		! source line 497
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	498,r13		! source line 498
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0SE",r10
!   _temp_585 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0IF",r10
	mov	505,r13		! source line 505
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_588  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_588 then goto _Label_587 else goto _Label_586
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_586
	jmp	_Label_587
_Label_586:
! THEN...
	mov	506,r13		! source line 506
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_587:
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	508,r13		! source line 508
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ConditionHoare_2:
	.word	_sourceFileName
	.word	_Label_589
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_590
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_591
	.word	12
	.word	4
	.word	_Label_592
	.word	-9
	.word	1
	.word	_Label_593
	.word	-16
	.word	4
	.word	_Label_594
	.word	-20
	.word	4
	.word	_Label_595
	.word	-10
	.word	1
	.word	_Label_596
	.word	-24
	.word	4
	.word	0
_Label_589:
	.ascii	"ConditionHoare"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_590:
	.ascii	"Pself\0"
	.align
_Label_591:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_592:
	.byte	'C'
	.ascii	"_temp_588\0"
	.align
_Label_593:
	.byte	'?'
	.ascii	"_temp_585\0"
	.align
_Label_594:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_595:
	.byte	'C'
	.ascii	"_temp_583\0"
	.align
_Label_596:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_ConditionHoare_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ConditionHoare_3,r1
	push	r1
	mov	10,r1
_Label_1858:
	push	r0
	sub	r1,1,r1
	bne	_Label_1858
	mov	512,r13		! source line 512
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	516,r13		! source line 516
	mov	"\0\0IF",r10
	mov	516,r13		! source line 516
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_599  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_599 then goto _Label_598 else goto _Label_597
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_597
	jmp	_Label_598
_Label_597:
! THEN...
	mov	517,r13		! source line 517
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_600 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_600  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	517,r13		! source line 517
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_598:
! ASSIGNMENT STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	520,r13		! source line 520
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
	mov	521,r13		! source line 521
	mov	"\0\0SE",r10
!   _temp_601 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! IF STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_603		(int)
	load	[r14+-40],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_603
!	jmp	_Label_602
_Label_602:
! THEN...
	mov	523,r13		! source line 523
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_604 = t + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_604 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0SE",r10
!   _temp_605 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_606 = mutex + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_606 = t  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-16],r2
	store	r1,[r2]
! END IF...
_Label_603:
! ASSIGNMENT STATEMENT...
	mov	527,r13		! source line 527
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	527,r13		! source line 527
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	529,r13		! source line 529
	mov	"\0\0IF",r10
	mov	529,r13		! source line 529
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_609  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_609 then goto _Label_608 else goto _Label_607
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_607
	jmp	_Label_608
_Label_607:
! THEN...
	mov	530,r13		! source line 530
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	530,r13		! source line 530
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_608:
! RETURN STATEMENT...
	mov	529,r13		! source line 529
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ConditionHoare_3:
	.word	_sourceFileName
	.word	_Label_610
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_611
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_612
	.word	12
	.word	4
	.word	_Label_613
	.word	-9
	.word	1
	.word	_Label_614
	.word	-16
	.word	4
	.word	_Label_615
	.word	-20
	.word	4
	.word	_Label_616
	.word	-24
	.word	4
	.word	_Label_617
	.word	-28
	.word	4
	.word	_Label_618
	.word	-32
	.word	4
	.word	_Label_619
	.word	-10
	.word	1
	.word	_Label_620
	.word	-36
	.word	4
	.word	_Label_621
	.word	-40
	.word	4
	.word	0
_Label_610:
	.ascii	"ConditionHoare"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_611:
	.ascii	"Pself\0"
	.align
_Label_612:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_613:
	.byte	'C'
	.ascii	"_temp_609\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_619:
	.byte	'C'
	.ascii	"_temp_599\0"
	.align
_Label_620:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_621:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_ConditionHoare_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ConditionHoare_4,r1
	push	r1
	mov	13,r1
_Label_1859:
	push	r0
	sub	r1,1,r1
	bne	_Label_1859
	mov	535,r13		! source line 535
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	539,r13		! source line 539
	mov	"\0\0IF",r10
	mov	539,r13		! source line 539
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_624  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_624 then goto _Label_623 else goto _Label_622
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_622
	jmp	_Label_623
_Label_622:
! THEN...
	mov	540,r13		! source line 540
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_625 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_625  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	540,r13		! source line 540
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_623:
! ASSIGNMENT STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	543,r13		! source line 543
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0AS",r10
	mov	547,r13		! source line 547
	mov	"\0\0SE",r10
!   _temp_626 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Remove
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	548,r13		! source line 548
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_628		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_628
!	jmp	_Label_627
_Label_627:
! THEN...
	mov	549,r13		! source line 549
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_629 = t + 76
	load	[r14+-52],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_629 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0SE",r10
!   _temp_630 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	551,r13		! source line 551
	mov	"\0\0AS",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_631 = mutex + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_631 = t  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r14+-28],r2
	store	r1,[r2]
! END IF...
_Label_628:
! WHILE STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0WH",r10
_Label_632:
!	jmp	_Label_633
_Label_633:
	mov	555,r13		! source line 555
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0AS",r10
	mov	556,r13		! source line 556
	mov	"\0\0SE",r10
!   _temp_635 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! IF STATEMENT...
	mov	557,r13		! source line 557
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_636
	load	[r14+-52],r1
	cmp	r1,r0
	be	_Label_636
	jmp	_Label_637
_Label_636:
! THEN...
	mov	558,r13		! source line 558
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0BR",r10
	jmp	_Label_634
! END IF...
_Label_637:
! ASSIGNMENT STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = t + 76
	load	[r14+-52],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_638 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0SE",r10
!   _temp_639 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_632
_Label_634:
! ASSIGNMENT STATEMENT...
	mov	564,r13		! source line 564
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	564,r13		! source line 564
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! IF STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0IF",r10
	mov	566,r13		! source line 566
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_642  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_642 then goto _Label_641 else goto _Label_640
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_640
	jmp	_Label_641
_Label_640:
! THEN...
	mov	567,r13		! source line 567
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_641:
! RETURN STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ConditionHoare_4:
	.word	_sourceFileName
	.word	_Label_643
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_644
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_645
	.word	12
	.word	4
	.word	_Label_646
	.word	-9
	.word	1
	.word	_Label_647
	.word	-16
	.word	4
	.word	_Label_648
	.word	-20
	.word	4
	.word	_Label_649
	.word	-24
	.word	4
	.word	_Label_650
	.word	-28
	.word	4
	.word	_Label_651
	.word	-32
	.word	4
	.word	_Label_652
	.word	-36
	.word	4
	.word	_Label_653
	.word	-40
	.word	4
	.word	_Label_654
	.word	-44
	.word	4
	.word	_Label_655
	.word	-10
	.word	1
	.word	_Label_656
	.word	-48
	.word	4
	.word	_Label_657
	.word	-52
	.word	4
	.word	0
_Label_643:
	.ascii	"ConditionHoare"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_644:
	.ascii	"Pself\0"
	.align
_Label_645:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_646:
	.byte	'C'
	.ascii	"_temp_642\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_655:
	.byte	'C'
	.ascii	"_temp_624\0"
	.align
_Label_656:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_657:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_658
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_658:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_659
	.word	_sourceFileName
	.word	176		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_659:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_1860:
	push	r0
	sub	r1,1,r1
	bne	_Label_1860
	mov	580,r13		! source line 580
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	585,r13		! source line 585
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	586,r13		! source line 586
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	588,r13		! source line 588
	mov	"\0\0AS",r10
!   _temp_660 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_660) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_660 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0AS",r10
!   _temp_661 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_661 [0 ] into _temp_662
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_662 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0AS",r10
!   _temp_663 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_663 [999 ] into _temp_664
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_664 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0AS",r10
!   _temp_665 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_665 [999 ] into _temp_666
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_666		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0AS",r10
!   _temp_667 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_669 = &_temp_668
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_669 = _temp_669 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_671:
!   Data Move: *_temp_669 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_669 = _temp_669 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_670 = _temp_670 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_670) then goto _Label_671
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_671
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_672 = &_temp_668
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1861
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1861:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_667 = *_temp_672  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1862:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1862
! ASSIGNMENT STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0AS",r10
!   _temp_673 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_675 = &_temp_674
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_675 = _temp_675 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_677:
!   Data Move: *_temp_675 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_675 = _temp_675 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_676 = _temp_676 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_676) then goto _Label_677
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_677
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_678 = &_temp_674
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1863
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1863:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_673 = *_temp_678  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1864:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1864
! RETURN STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_679
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_680
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_681
	.word	12
	.word	4
	.word	_Label_682
	.word	-12
	.word	4
	.word	_Label_683
	.word	-16
	.word	4
	.word	_Label_684
	.word	-20
	.word	4
	.word	_Label_685
	.word	-84
	.word	64
	.word	_Label_686
	.word	-88
	.word	4
	.word	_Label_687
	.word	-92
	.word	4
	.word	_Label_688
	.word	-96
	.word	4
	.word	_Label_689
	.word	-100
	.word	4
	.word	_Label_690
	.word	-156
	.word	56
	.word	_Label_691
	.word	-160
	.word	4
	.word	_Label_692
	.word	-164
	.word	4
	.word	_Label_693
	.word	-168
	.word	4
	.word	_Label_694
	.word	-172
	.word	4
	.word	_Label_695
	.word	-176
	.word	4
	.word	_Label_696
	.word	-180
	.word	4
	.word	_Label_697
	.word	-184
	.word	4
	.word	_Label_698
	.word	-188
	.word	4
	.word	0
_Label_679:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_680:
	.ascii	"Pself\0"
	.align
_Label_681:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_678\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_696:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_1865:
	push	r0
	sub	r1,1,r1
	bne	_Label_1865
	mov	599,r13		! source line 599
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	610,r13		! source line 610
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_699 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_699  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_701 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_700  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	618,r13		! source line 618
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_702
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_703
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_704
	.word	12
	.word	4
	.word	_Label_705
	.word	16
	.word	4
	.word	_Label_706
	.word	-12
	.word	4
	.word	_Label_707
	.word	-16
	.word	4
	.word	_Label_708
	.word	-20
	.word	4
	.word	_Label_709
	.word	-24
	.word	4
	.word	_Label_710
	.word	-28
	.word	4
	.word	0
_Label_702:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_703:
	.ascii	"Pself\0"
	.align
_Label_704:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_705:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_701\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_709:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_710:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_1866:
	push	r0
	sub	r1,1,r1
	bne	_Label_1866
	mov	623,r13		! source line 623
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_713 == _P_Kernel_currentThread then goto _Label_712		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_712
!	jmp	_Label_711
_Label_711:
! THEN...
	mov	640,r13		! source line 640
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_714 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_714  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	640,r13		! source line 640
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_712:
! ASSIGNMENT STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	642,r13		! source line 642
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	646,r13		! source line 646
	mov	"\0\0AS",r10
	mov	646,r13		! source line 646
	mov	"\0\0SE",r10
!   _temp_715 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	647,r13		! source line 647
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_717		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_717
!	jmp	_Label_716
_Label_716:
! THEN...
	mov	651,r13		! source line 651
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_719		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_719
!	jmp	_Label_718
_Label_718:
! THEN...
	mov	652,r13		! source line 652
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_720 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_720  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	652,r13		! source line 652
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_719:
! ASSIGNMENT STATEMENT...
	mov	654,r13		! source line 654
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_722 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_721  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	656,r13		! source line 656
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_717:
! ASSIGNMENT STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	658,r13		! source line 658
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_723
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_724
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_725
	.word	-12
	.word	4
	.word	_Label_726
	.word	-16
	.word	4
	.word	_Label_727
	.word	-20
	.word	4
	.word	_Label_728
	.word	-24
	.word	4
	.word	_Label_729
	.word	-28
	.word	4
	.word	_Label_730
	.word	-32
	.word	4
	.word	_Label_731
	.word	-36
	.word	4
	.word	_Label_732
	.word	-40
	.word	4
	.word	_Label_733
	.word	-44
	.word	4
	.word	0
_Label_723:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_724:
	.ascii	"Pself\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_722\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_715\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_731:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_732:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_733:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_1867:
	push	r0
	sub	r1,1,r1
	bne	_Label_1867
	mov	663,r13		! source line 663
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	675,r13		! source line 675
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_735		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_735
!	jmp	_Label_734
_Label_734:
! THEN...
	mov	676,r13		! source line 676
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_736 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_736  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	676,r13		! source line 676
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_735:
! IF STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_739 == _P_Kernel_currentThread then goto _Label_738		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_738
!	jmp	_Label_737
_Label_737:
! THEN...
	mov	680,r13		! source line 680
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_740 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_740  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	680,r13		! source line 680
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_738:
! ASSIGNMENT STATEMENT...
	mov	685,r13		! source line 685
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	686,r13		! source line 686
	mov	"\0\0AS",r10
	mov	686,r13		! source line 686
	mov	"\0\0SE",r10
!   _temp_741 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	687,r13		! source line 687
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_742
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_742
	jmp	_Label_743
_Label_742:
! THEN...
	mov	688,r13		! source line 688
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_744 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_744  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	688,r13		! source line 688
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_743:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	690,r13		! source line 690
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	690,r13		! source line 690
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_745
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_746
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_747
	.word	-12
	.word	4
	.word	_Label_748
	.word	-16
	.word	4
	.word	_Label_749
	.word	-20
	.word	4
	.word	_Label_750
	.word	-24
	.word	4
	.word	_Label_751
	.word	-28
	.word	4
	.word	_Label_752
	.word	-32
	.word	4
	.word	0
_Label_745:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_746:
	.ascii	"Pself\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_748:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_751:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_752:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_1868:
	push	r0
	sub	r1,1,r1
	bne	_Label_1868
	mov	695,r13		! source line 695
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0IF",r10
!   _temp_756 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_756 [0 ] into _temp_757
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_755 = *_temp_757  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_755 == 606348324 then goto _Label_754		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_754
!	jmp	_Label_753
_Label_753:
! THEN...
	mov	702,r13		! source line 702
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_758 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_758  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	702,r13		! source line 702
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_759
_Label_754:
! ELSE...
	mov	703,r13		! source line 703
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0IF",r10
!   _temp_763 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_763 [999 ] into _temp_764
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_762 = *_temp_764  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_762 == 606348324 then goto _Label_761		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_761
!	jmp	_Label_760
_Label_760:
! THEN...
	mov	704,r13		! source line 704
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_765 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_765  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	704,r13		! source line 704
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_761:
! END IF...
_Label_759:
! RETURN STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_766
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_767
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_768
	.word	-12
	.word	4
	.word	_Label_769
	.word	-16
	.word	4
	.word	_Label_770
	.word	-20
	.word	4
	.word	_Label_771
	.word	-24
	.word	4
	.word	_Label_772
	.word	-28
	.word	4
	.word	_Label_773
	.word	-32
	.word	4
	.word	_Label_774
	.word	-36
	.word	4
	.word	_Label_775
	.word	-40
	.word	4
	.word	0
_Label_766:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_767:
	.ascii	"Pself\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_1869:
	push	r0
	sub	r1,1,r1
	bne	_Label_1869
	mov	710,r13		! source line 710
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	716,r13		! source line 716
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_776 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_776  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	717,r13		! source line 717
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_777 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_777  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_778  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	720,r13		! source line 720
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_779 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_779  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_780 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_780  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	723,r13		! source line 723
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_785 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_786 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_785  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_781:
!   Perform the FOR-LOOP termination test
!   if i > _temp_786 then goto _Label_784		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_784
_Label_782:
	mov	723,r13		! source line 723
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_787 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_787  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_788 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_788  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_789 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_789  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_791 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_791 [i ] into _temp_792
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_790 = *_temp_792  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_790  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_793 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_793  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_795 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_795 [i ] into _temp_796
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_794 = *_temp_796  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_794  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_797 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_797  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_783:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_781
! END FOR
_Label_784:
! CALL STATEMENT...
!   _temp_798 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-116]
!   _temp_799 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_798  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_799  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_800 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-108]
!   _temp_802 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_802 [0 ] into _temp_803
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_801 = _temp_803		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_800  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_801  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	734,r13		! source line 734
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_806
	cmp	r1,2
	be	_Label_807
	cmp	r1,3
	be	_Label_808
	cmp	r1,4
	be	_Label_809
	cmp	r1,5
	be	_Label_810
	jmp	_Label_804
! CASE 1...
_Label_806:
! CALL STATEMENT...
!   _temp_811 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_811  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0BR",r10
	jmp	_Label_805
! CASE 2...
_Label_807:
! CALL STATEMENT...
!   _temp_812 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_812  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0BR",r10
	jmp	_Label_805
! CASE 3...
_Label_808:
! CALL STATEMENT...
!   _temp_813 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_813  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0BR",r10
	jmp	_Label_805
! CASE 4...
_Label_809:
! CALL STATEMENT...
!   _temp_814 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_814  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	745,r13		! source line 745
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0BR",r10
	jmp	_Label_805
! CASE 5...
_Label_810:
! CALL STATEMENT...
!   _temp_815 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_815  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	748,r13		! source line 748
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0BR",r10
	jmp	_Label_805
! DEFAULT CASE...
_Label_804:
! CALL STATEMENT...
!   _temp_816 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_816  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	751,r13		! source line 751
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_805:
! CALL STATEMENT...
!   _temp_817 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_817  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	753,r13		! source line 753
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	754,r13		! source line 754
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	755,r13		! source line 755
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_818 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_818  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	756,r13		! source line 756
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	757,r13		! source line 757
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_823 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_824 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_823  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_819:
!   Perform the FOR-LOOP termination test
!   if i > _temp_824 then goto _Label_822		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_822
_Label_820:
	mov	757,r13		! source line 757
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_825 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_825  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_826 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_826  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	759,r13		! source line 759
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_827 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_827  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_829 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_829 [i ] into _temp_830
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_828 = *_temp_830  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_828  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	761,r13		! source line 761
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_831 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_831  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	762,r13		! source line 762
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_833 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_833 [i ] into _temp_834
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_832 = *_temp_834  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_832  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	763,r13		! source line 763
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_835 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_835  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	764,r13		! source line 764
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_821:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_819
! END FOR
_Label_822:
! ASSIGNMENT STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	766,r13		! source line 766
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_836
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_837
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_838
	.word	-12
	.word	4
	.word	_Label_839
	.word	-16
	.word	4
	.word	_Label_840
	.word	-20
	.word	4
	.word	_Label_841
	.word	-24
	.word	4
	.word	_Label_842
	.word	-28
	.word	4
	.word	_Label_843
	.word	-32
	.word	4
	.word	_Label_844
	.word	-36
	.word	4
	.word	_Label_845
	.word	-40
	.word	4
	.word	_Label_846
	.word	-44
	.word	4
	.word	_Label_847
	.word	-48
	.word	4
	.word	_Label_848
	.word	-52
	.word	4
	.word	_Label_849
	.word	-56
	.word	4
	.word	_Label_850
	.word	-60
	.word	4
	.word	_Label_851
	.word	-64
	.word	4
	.word	_Label_852
	.word	-68
	.word	4
	.word	_Label_853
	.word	-72
	.word	4
	.word	_Label_854
	.word	-76
	.word	4
	.word	_Label_855
	.word	-80
	.word	4
	.word	_Label_856
	.word	-84
	.word	4
	.word	_Label_857
	.word	-88
	.word	4
	.word	_Label_858
	.word	-92
	.word	4
	.word	_Label_859
	.word	-96
	.word	4
	.word	_Label_860
	.word	-100
	.word	4
	.word	_Label_861
	.word	-104
	.word	4
	.word	_Label_862
	.word	-108
	.word	4
	.word	_Label_863
	.word	-112
	.word	4
	.word	_Label_864
	.word	-116
	.word	4
	.word	_Label_865
	.word	-120
	.word	4
	.word	_Label_866
	.word	-124
	.word	4
	.word	_Label_867
	.word	-128
	.word	4
	.word	_Label_868
	.word	-132
	.word	4
	.word	_Label_869
	.word	-136
	.word	4
	.word	_Label_870
	.word	-140
	.word	4
	.word	_Label_871
	.word	-144
	.word	4
	.word	_Label_872
	.word	-148
	.word	4
	.word	_Label_873
	.word	-152
	.word	4
	.word	_Label_874
	.word	-156
	.word	4
	.word	_Label_875
	.word	-160
	.word	4
	.word	_Label_876
	.word	-164
	.word	4
	.word	_Label_877
	.word	-168
	.word	4
	.word	_Label_878
	.word	-172
	.word	4
	.word	_Label_879
	.word	-176
	.word	4
	.word	_Label_880
	.word	-180
	.word	4
	.word	_Label_881
	.word	-184
	.word	4
	.word	_Label_882
	.word	-188
	.word	4
	.word	_Label_883
	.word	-192
	.word	4
	.word	_Label_884
	.word	-196
	.word	4
	.word	0
_Label_836:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_837:
	.ascii	"Pself\0"
	.align
_Label_838:
	.byte	'?'
	.ascii	"_temp_835\0"
	.align
_Label_839:
	.byte	'?'
	.ascii	"_temp_834\0"
	.align
_Label_840:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_845:
	.byte	'?'
	.ascii	"_temp_828\0"
	.align
_Label_846:
	.byte	'?'
	.ascii	"_temp_827\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_826\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_825\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_853:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_854:
	.byte	'?'
	.ascii	"_temp_815\0"
	.align
_Label_855:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_856:
	.byte	'?'
	.ascii	"_temp_813\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_812\0"
	.align
_Label_858:
	.byte	'?'
	.ascii	"_temp_811\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_803\0"
	.align
_Label_860:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_861:
	.byte	'?'
	.ascii	"_temp_801\0"
	.align
_Label_862:
	.byte	'?'
	.ascii	"_temp_800\0"
	.align
_Label_863:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_864:
	.byte	'?'
	.ascii	"_temp_798\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_797\0"
	.align
_Label_866:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_870:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_871:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_777\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_776\0"
	.align
_Label_883:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_884:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_885
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_885:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_886
	.word	_sourceFileName
	.word	203		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_886:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	12522,r1
_Label_1870:
	push	r0
	sub	r1,1,r1
	bne	_Label_1870
	mov	820,r13		! source line 820
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_887 = _StringConst_77
	set	_StringConst_77,r1
	set	-50084,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_887  sizeInBytes=4
	set	-50084,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	829,r13		! source line 829
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	838,r13		! source line 838
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	839,r13		! source line 839
	mov	"\0\0AS",r10
!   _temp_889 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-50076,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_891 = &_temp_890
	set	-50072,r1
	add	r14,r1,r1
	store	r1,[r14+-8428]
!   _temp_891 = _temp_891 + 4
	load	[r14+-8428],r1
	add	r1,4,r1
	store	r1,[r14+-8428]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_893 = zeros  (sizeInBytes=4164)
	add	r14,-8420,r4
	mov	1041,r3
_Label_1871:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1871
!   _temp_893 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-8420]
	mov	10,r1
	store	r1,[r14+-8424]
_Label_895:
!   Data Move: *_temp_891 = _temp_893  (sizeInBytes=4164)
	add	r14,-8420,r5
	load	[r14+-8428],r4
	mov	1041,r3
_Label_1872:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1872
!   _temp_891 = _temp_891 + 4164
	load	[r14+-8428],r1
	add	r1,4164,r1
	store	r1,[r14+-8428]
!   _temp_892 = _temp_892 + -1
	load	[r14+-8424],r1
	add	r1,-1,r1
	store	r1,[r14+-8424]
!   if intNotZero (_temp_892) then goto _Label_895
	load	[r14+-8424],r1
	cmp	r1,r0
	bne	_Label_895
!   Initialize the array size...
	mov	10,r1
	set	-50072,r2
	store	r1,[r14+r2]
!   _temp_896 = &_temp_890
	set	-50072,r1
	add	r14,r1,r1
	store	r1,[r14+-4252]
!   make sure array has size 10
	set	-50076,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1873
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1873:
!   make sure array has size 10
	load	[r14+-4252],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_889 = *_temp_896  (sizeInBytes=41644)
	load	[r14+-4252],r5
	set	-50076,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1874:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1874
! FOR STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_901 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-4248]
!   Calculate and save the FOR-LOOP ending value
!   _temp_902 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-4244]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_901  (sizeInBytes=4)
	load	[r14+-4248],r1
	set	-50088,r2
	store	r1,[r14+r2]
_Label_897:
!   Perform the FOR-LOOP termination test
!   if i > _temp_902 then goto _Label_900		
	set	-50088,r1
	load	[r14+r1],r1
	load	[r14+-4244],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_900
_Label_898:
	mov	841,r13		! source line 841
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0AS",r10
!   _temp_903 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-4240]
!   Move address of _temp_903 [i ] into _temp_904
!     make sure index expr is >= 0
	set	-50088,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-4240],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-4236]
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_905 = zeros  (sizeInBytes=4164)
	add	r14,-4232,r4
	mov	1041,r3
_Label_1875:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1875
!   _temp_905 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4232]
!   Data Move: *_temp_904 = _temp_905  (sizeInBytes=4164)
	add	r14,-4232,r5
	load	[r14+-4236],r4
	mov	1041,r3
_Label_1876:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1876
! SEND STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0SE",r10
!   _temp_907 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-64]
!   _temp_908 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_908 [i ] into _temp_909
!     make sure index expr is >= 0
	set	-50088,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_907  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0AS",r10
!   _temp_910 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_910 [i ] into _temp_911
!     make sure index expr is >= 0
	set	-50088,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   _temp_912 = _temp_911 + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_912 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	845,r13		! source line 845
	mov	"\0\0SE",r10
!   _temp_914 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_914 [i ] into _temp_915
!     make sure index expr is >= 0
	set	-50088,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_913 = _temp_915		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_916 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_913  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_899:
!   i = i + 1
	set	-50088,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-50088,r2
	store	r1,[r14+r2]
	jmp	_Label_897
! END FOR
_Label_900:
! ASSIGNMENT STATEMENT...
	mov	848,r13		! source line 848
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	850,r13		! source line 850
	mov	"\0\0SE",r10
!   _temp_919 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Send message Init
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	851,r13		! source line 851
	mov	"\0\0SE",r10
!   _temp_920 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	851,r13		! source line 851
	mov	"\0\0RE",r10
	set	50092,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_921
	.word	4		! total size of parameters
	.word	50088		! frame size = 50088
	.word	_Label_922
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_923
	.word	-12
	.word	4
	.word	_Label_924
	.word	-16
	.word	4
	.word	_Label_925
	.word	-20
	.word	4
	.word	_Label_926
	.word	-24
	.word	4
	.word	_Label_927
	.word	-28
	.word	4
	.word	_Label_928
	.word	-32
	.word	4
	.word	_Label_929
	.word	-36
	.word	4
	.word	_Label_930
	.word	-40
	.word	4
	.word	_Label_931
	.word	-44
	.word	4
	.word	_Label_932
	.word	-48
	.word	4
	.word	_Label_933
	.word	-52
	.word	4
	.word	_Label_934
	.word	-56
	.word	4
	.word	_Label_935
	.word	-60
	.word	4
	.word	_Label_936
	.word	-64
	.word	4
	.word	_Label_937
	.word	-68
	.word	4
	.word	_Label_938
	.word	-4232
	.word	4164
	.word	_Label_939
	.word	-4236
	.word	4
	.word	_Label_940
	.word	-4240
	.word	4
	.word	_Label_941
	.word	-4244
	.word	4
	.word	_Label_942
	.word	-4248
	.word	4
	.word	_Label_943
	.word	-4252
	.word	4
	.word	_Label_944
	.word	-4256
	.word	4
	.word	_Label_945
	.word	-8420
	.word	4164
	.word	_Label_946
	.word	-8424
	.word	4
	.word	_Label_947
	.word	-8428
	.word	4
	.word	_Label_948
	.word	-50072
	.word	41644
	.word	_Label_949
	.word	-50076
	.word	4
	.word	_Label_950
	.word	-50080
	.word	4
	.word	_Label_951
	.word	-50084
	.word	4
	.word	_Label_952
	.word	-50088
	.word	4
	.word	0
_Label_921:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_922:
	.ascii	"Pself\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_928:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
_Label_929:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_930:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_931:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_932:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_933:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_934:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_903\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_896\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_893\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_892\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_891\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_890\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_889\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_952:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_1877:
	push	r0
	sub	r1,1,r1
	bne	_Label_1877
	mov	856,r13		! source line 856
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	863,r13		! source line 863
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_953 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_953  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	864,r13		! source line 864
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_958 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_959 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_958  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_954:
!   Perform the FOR-LOOP termination test
!   if i > _temp_959 then goto _Label_957		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_957
_Label_955:
	mov	865,r13		! source line 865
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_960 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_960  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	866,r13		! source line 866
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	867,r13		! source line 867
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_961 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_961  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_963 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_963 [i ] into _temp_964
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_962 = _temp_964		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_962  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CA",r10
	call	_function_129_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_956:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_954
! END FOR
_Label_957:
! CALL STATEMENT...
!   _temp_965 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_965  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	872,r13		! source line 872
	mov	"\0\0SE",r10
!   _temp_966 = _function_128_PrintObjectAddr
	set	_function_128_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_967 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_966  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	873,r13		! source line 873
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	874,r13		! source line 874
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	874,r13		! source line 874
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	874,r13		! source line 874
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_968
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_969
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_970
	.word	-12
	.word	4
	.word	_Label_971
	.word	-16
	.word	4
	.word	_Label_972
	.word	-20
	.word	4
	.word	_Label_973
	.word	-24
	.word	4
	.word	_Label_974
	.word	-28
	.word	4
	.word	_Label_975
	.word	-32
	.word	4
	.word	_Label_976
	.word	-36
	.word	4
	.word	_Label_977
	.word	-40
	.word	4
	.word	_Label_978
	.word	-44
	.word	4
	.word	_Label_979
	.word	-48
	.word	4
	.word	_Label_980
	.word	-52
	.word	4
	.word	_Label_981
	.word	-56
	.word	4
	.word	_Label_982
	.word	-60
	.word	4
	.word	0
_Label_968:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_969:
	.ascii	"Pself\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_973:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_974:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_975:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_976:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_977:
	.byte	'?'
	.ascii	"_temp_960\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_958\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_981:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_982:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_1878:
	push	r0
	sub	r1,1,r1
	bne	_Label_1878
	mov	879,r13		! source line 879
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0SE",r10
!   _temp_983 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0WH",r10
_Label_984:
	mov	892,r13		! source line 892
	mov	"\0\0SE",r10
!   _temp_987 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_985 else goto _Label_986
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_986
	jmp	_Label_985
_Label_985:
	mov	892,r13		! source line 892
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0SE",r10
!   _temp_988 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_989 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_988  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_984
_Label_986:
! ASSIGNMENT STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
	mov	898,r13		! source line 898
	mov	"\0\0SE",r10
!   _temp_990 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_991 = t + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_991 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_992 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	901,r13		! source line 901
	mov	"\0\0RE",r10
!   ReturnResult: t  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_993
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_994
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_995
	.word	-12
	.word	4
	.word	_Label_996
	.word	-16
	.word	4
	.word	_Label_997
	.word	-20
	.word	4
	.word	_Label_998
	.word	-24
	.word	4
	.word	_Label_999
	.word	-28
	.word	4
	.word	_Label_1000
	.word	-32
	.word	4
	.word	_Label_1001
	.word	-36
	.word	4
	.word	_Label_1002
	.word	-40
	.word	4
	.word	0
_Label_993:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_994:
	.ascii	"Pself\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_992\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_990\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_989\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_988\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1001:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1002:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_1879:
	push	r0
	sub	r1,1,r1
	bne	_Label_1879
	mov	906,r13		! source line 906
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0SE",r10
!   _temp_1003 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	917,r13		! source line 917
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1004 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1004 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0SE",r10
!   _temp_1005 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	919,r13		! source line 919
	mov	"\0\0SE",r10
!   _temp_1006 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1007 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1006  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_1008 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1009
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1010
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1011
	.word	12
	.word	4
	.word	_Label_1012
	.word	-12
	.word	4
	.word	_Label_1013
	.word	-16
	.word	4
	.word	_Label_1014
	.word	-20
	.word	4
	.word	_Label_1015
	.word	-24
	.word	4
	.word	_Label_1016
	.word	-28
	.word	4
	.word	_Label_1017
	.word	-32
	.word	4
	.word	0
_Label_1009:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1010:
	.ascii	"Pself\0"
	.align
_Label_1011:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1012:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1013:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1014:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1015:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1016:
	.byte	'?'
	.ascii	"_temp_1004\0"
	.align
_Label_1017:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1018
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1018:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1019
	.word	_sourceFileName
	.word	224		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1019:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_1880:
	push	r0
	sub	r1,1,r1
	bne	_Label_1880
	mov	934,r13		! source line 934
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	936,r13		! source line 936
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1881:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1881
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0SE",r10
!   _temp_1021 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1022
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1023
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1024
	.word	-12
	.word	4
	.word	_Label_1025
	.word	-16
	.word	4
	.word	0
_Label_1022:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1023:
	.ascii	"Pself\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_1882:
	push	r0
	sub	r1,1,r1
	bne	_Label_1882
	mov	948,r13		! source line 948
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1026) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	954,r13		! source line 954
	mov	"\0\0SE",r10
!   _temp_1027 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1028 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1028  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	955,r13		! source line 955
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	956,r13		! source line 956
	mov	"\0\0CA",r10
	call	_function_129_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	966,r13		! source line 966
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	966,r13		! source line 966
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1029
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1030
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1031
	.word	-12
	.word	4
	.word	_Label_1032
	.word	-16
	.word	4
	.word	_Label_1033
	.word	-20
	.word	4
	.word	0
_Label_1029:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1030:
	.ascii	"Pself\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_1883:
	push	r0
	sub	r1,1,r1
	bne	_Label_1883
	mov	971,r13		! source line 971
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1034 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1034  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	975,r13		! source line 975
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1035  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	976,r13		! source line 976
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1036 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1036  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	977,r13		! source line 977
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	978,r13		! source line 978
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1037 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1037  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	979,r13		! source line 979
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1039		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1039
!	jmp	_Label_1038
_Label_1038:
! THEN...
	mov	981,r13		! source line 981
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1040 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1040  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	981,r13		! source line 981
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1041
_Label_1039:
! ELSE...
	mov	982,r13		! source line 982
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1043		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1043
!	jmp	_Label_1042
_Label_1042:
! THEN...
	mov	983,r13		! source line 983
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1044 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1044  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	983,r13		! source line 983
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1045
_Label_1043:
! ELSE...
	mov	984,r13		! source line 984
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1047		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1047
!	jmp	_Label_1046
_Label_1046:
! THEN...
	mov	985,r13		! source line 985
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1048 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1048  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	985,r13		! source line 985
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1049
_Label_1047:
! ELSE...
	mov	987,r13		! source line 987
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1050 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1050  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	987,r13		! source line 987
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1049:
! END IF...
_Label_1045:
! END IF...
_Label_1041:
! CALL STATEMENT...
!   _temp_1051 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1051  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	989,r13		! source line 989
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	990,r13		! source line 990
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1052 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1052  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	991,r13		! source line 991
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	992,r13		! source line 992
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	993,r13		! source line 993
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	993,r13		! source line 993
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1053
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1054
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1055
	.word	-12
	.word	4
	.word	_Label_1056
	.word	-16
	.word	4
	.word	_Label_1057
	.word	-20
	.word	4
	.word	_Label_1058
	.word	-24
	.word	4
	.word	_Label_1059
	.word	-28
	.word	4
	.word	_Label_1060
	.word	-32
	.word	4
	.word	_Label_1061
	.word	-36
	.word	4
	.word	_Label_1062
	.word	-40
	.word	4
	.word	_Label_1063
	.word	-44
	.word	4
	.word	_Label_1064
	.word	-48
	.word	4
	.word	0
_Label_1053:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1054:
	.ascii	"Pself\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1065
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1065:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1066
	.word	_sourceFileName
	.word	244		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1066:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	399,r1
_Label_1884:
	push	r0
	sub	r1,1,r1
	bne	_Label_1884
	mov	1004,r13		! source line 1004
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1016,r13		! source line 1016
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	1017,r13		! source line 1017
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! ASSIGNMENT STATEMENT...
	mov	1018,r13		! source line 1018
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! ASSIGNMENT STATEMENT...
	mov	1019,r13		! source line 1019
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	1021,r13		! source line 1021
	mov	"\0\0SE",r10
!   _temp_1070 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-1580]
!   Send message Init
	load	[r14+-1580],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0SE",r10
!   _temp_1071 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-1576]
!   Send message Init
	load	[r14+-1576],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0SE",r10
!   _temp_1072 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-1572]
!   Send message Init
	load	[r14+-1572],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1024,r13		! source line 1024
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	1026,r13		! source line 1026
	mov	"\0\0AS",r10
!   _temp_1074 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1564]
!   NEW ARRAY Constructor...
!   _temp_1076 = &_temp_1075
	add	r14,-1560,r1
	store	r1,[r14+-316]
!   _temp_1076 = _temp_1076 + 4
	load	[r14+-316],r1
	add	r1,4,r1
	store	r1,[r14+-316]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1078 = zeros  (sizeInBytes=124)
	add	r14,-308,r4
	mov	31,r3
_Label_1885:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1885
!   _temp_1078 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-308]
	mov	10,r1
	store	r1,[r14+-312]
_Label_1080:
!   Data Move: *_temp_1076 = _temp_1078  (sizeInBytes=124)
	add	r14,-308,r5
	load	[r14+-316],r4
	mov	31,r3
_Label_1886:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1886
!   _temp_1076 = _temp_1076 + 124
	load	[r14+-316],r1
	add	r1,124,r1
	store	r1,[r14+-316]
!   _temp_1077 = _temp_1077 + -1
	load	[r14+-312],r1
	add	r1,-1,r1
	store	r1,[r14+-312]
!   if intNotZero (_temp_1077) then goto _Label_1080
	load	[r14+-312],r1
	cmp	r1,r0
	bne	_Label_1080
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1560]
!   _temp_1081 = &_temp_1075
	add	r14,-1560,r1
	store	r1,[r14+-180]
!   make sure array has size 10
	load	[r14+-1564],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1887
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1887:
!   make sure array has size 10
	load	[r14+-180],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1074 = *_temp_1081  (sizeInBytes=1244)
	load	[r14+-180],r5
	load	[r14+-1564],r4
	mov	311,r3
_Label_1888:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1888
! FOR STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1086 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-176]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1087 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-172]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1086  (sizeInBytes=4)
	load	[r14+-176],r1
	store	r1,[r14+-1596]
_Label_1082:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1087 then goto _Label_1085		
	load	[r14+-1596],r1
	load	[r14+-172],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1085
_Label_1083:
	mov	1028,r13		! source line 1028
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0AS",r10
!   _temp_1088 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-168]
!   Move address of _temp_1088 [i ] into _temp_1089
!     make sure index expr is >= 0
	load	[r14+-1596],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1090 = zeros  (sizeInBytes=124)
	add	r14,-160,r4
	mov	31,r3
_Label_1889:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1889
!   _temp_1090 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_1089 = _temp_1090  (sizeInBytes=124)
	add	r14,-160,r5
	load	[r14+-164],r4
	mov	31,r3
_Label_1890:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1890
! SEND STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_1092 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1092 [i ] into _temp_1093
!     make sure index expr is >= 0
	load	[r14+-1596],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_1095 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1095 [i ] into _temp_1096
!     make sure index expr is >= 0
	load	[r14+-1596],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1094 = _temp_1096		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1097 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1094  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1084:
!   i = i + 1
	load	[r14+-1596],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1596]
	jmp	_Label_1082
! END FOR
_Label_1085:
! RETURN STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0RE",r10
	add	r15,1600,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1098
	.word	4		! total size of parameters
	.word	1596		! frame size = 1596
	.word	_Label_1099
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1100
	.word	-12
	.word	4
	.word	_Label_1101
	.word	-16
	.word	4
	.word	_Label_1102
	.word	-20
	.word	4
	.word	_Label_1103
	.word	-24
	.word	4
	.word	_Label_1104
	.word	-28
	.word	4
	.word	_Label_1105
	.word	-32
	.word	4
	.word	_Label_1106
	.word	-36
	.word	4
	.word	_Label_1107
	.word	-160
	.word	124
	.word	_Label_1108
	.word	-164
	.word	4
	.word	_Label_1109
	.word	-168
	.word	4
	.word	_Label_1110
	.word	-172
	.word	4
	.word	_Label_1111
	.word	-176
	.word	4
	.word	_Label_1112
	.word	-180
	.word	4
	.word	_Label_1113
	.word	-184
	.word	4
	.word	_Label_1114
	.word	-308
	.word	124
	.word	_Label_1115
	.word	-312
	.word	4
	.word	_Label_1116
	.word	-316
	.word	4
	.word	_Label_1117
	.word	-1560
	.word	1244
	.word	_Label_1118
	.word	-1564
	.word	4
	.word	_Label_1119
	.word	-1568
	.word	4
	.word	_Label_1120
	.word	-1572
	.word	4
	.word	_Label_1121
	.word	-1576
	.word	4
	.word	_Label_1122
	.word	-1580
	.word	4
	.word	_Label_1123
	.word	-1584
	.word	4
	.word	_Label_1124
	.word	-1588
	.word	4
	.word	_Label_1125
	.word	-1592
	.word	4
	.word	_Label_1126
	.word	-1596
	.word	4
	.word	0
_Label_1098:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1099:
	.ascii	"Pself\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1076\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1075\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1074\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1126:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_1891:
	push	r0
	sub	r1,1,r1
	bne	_Label_1891
	mov	1038,r13		! source line 1038
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1045,r13		! source line 1045
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1127 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1127  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1046,r13		! source line 1046
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1132 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1133 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1132  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1128:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1133 then goto _Label_1131		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1131
_Label_1129:
	mov	1047,r13		! source line 1047
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1134 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1134  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1048,r13		! source line 1048
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1049,r13		! source line 1049
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1135 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1135  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1050,r13		! source line 1050
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0SE",r10
!   _temp_1136 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1136 [i ] into _temp_1137
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1130:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1128
! END FOR
_Label_1131:
! CALL STATEMENT...
!   _temp_1138 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1138  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1053,r13		! source line 1053
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0SE",r10
!   _temp_1139 = _function_128_PrintObjectAddr
	set	_function_128_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1140 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1139  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1055,r13		! source line 1055
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1056,r13		! source line 1056
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1056,r13		! source line 1056
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1141
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1142
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1143
	.word	-12
	.word	4
	.word	_Label_1144
	.word	-16
	.word	4
	.word	_Label_1145
	.word	-20
	.word	4
	.word	_Label_1146
	.word	-24
	.word	4
	.word	_Label_1147
	.word	-28
	.word	4
	.word	_Label_1148
	.word	-32
	.word	4
	.word	_Label_1149
	.word	-36
	.word	4
	.word	_Label_1150
	.word	-40
	.word	4
	.word	_Label_1151
	.word	-44
	.word	4
	.word	_Label_1152
	.word	-48
	.word	4
	.word	_Label_1153
	.word	-52
	.word	4
	.word	_Label_1154
	.word	-56
	.word	4
	.word	0
_Label_1141:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1142:
	.ascii	"Pself\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1153:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1154:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_1892:
	push	r0
	sub	r1,1,r1
	bne	_Label_1892
	mov	1061,r13		! source line 1061
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1068,r13		! source line 1068
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1155 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1155  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1069,r13		! source line 1069
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1070,r13		! source line 1070
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1160 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1161 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1160  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1156:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1161 then goto _Label_1159		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1159
_Label_1157:
	mov	1070,r13		! source line 1070
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1162 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1162  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1071,r13		! source line 1071
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1072,r13		! source line 1072
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1073,r13		! source line 1073
	mov	"\0\0SE",r10
!   _temp_1163 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1163 [i ] into _temp_1164
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1158:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1156
! END FOR
_Label_1159:
! CALL STATEMENT...
!   _temp_1165 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1165  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1075,r13		! source line 1075
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0SE",r10
!   _temp_1166 = _function_128_PrintObjectAddr
	set	_function_128_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1167 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1166  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1077,r13		! source line 1077
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1078,r13		! source line 1078
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1168
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1169
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1170
	.word	-12
	.word	4
	.word	_Label_1171
	.word	-16
	.word	4
	.word	_Label_1172
	.word	-20
	.word	4
	.word	_Label_1173
	.word	-24
	.word	4
	.word	_Label_1174
	.word	-28
	.word	4
	.word	_Label_1175
	.word	-32
	.word	4
	.word	_Label_1176
	.word	-36
	.word	4
	.word	_Label_1177
	.word	-40
	.word	4
	.word	_Label_1178
	.word	-44
	.word	4
	.word	_Label_1179
	.word	-48
	.word	4
	.word	_Label_1180
	.word	-52
	.word	4
	.word	0
_Label_1168:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1169:
	.ascii	"Pself\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1179:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1180:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_1893:
	push	r0
	sub	r1,1,r1
	bne	_Label_1893
	mov	1083,r13		! source line 1083
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0SE",r10
!   _temp_1181 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1094,r13		! source line 1094
	mov	"\0\0WH",r10
_Label_1182:
	mov	1094,r13		! source line 1094
	mov	"\0\0SE",r10
!   _temp_1185 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1183 else goto _Label_1184
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1184
	jmp	_Label_1183
_Label_1183:
	mov	1094,r13		! source line 1094
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_1186 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1187 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1186  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1182
_Label_1184:
! ASSIGNMENT STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0AS",r10
	mov	1102,r13		! source line 1102
	mov	"\0\0SE",r10
!   _temp_1188 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1189 = pcb + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1189 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1190 = pcb + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1190 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_1191 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0RE",r10
!   ReturnResult: pcb  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1192
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1193
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1194
	.word	-12
	.word	4
	.word	_Label_1195
	.word	-16
	.word	4
	.word	_Label_1196
	.word	-20
	.word	4
	.word	_Label_1197
	.word	-24
	.word	4
	.word	_Label_1198
	.word	-28
	.word	4
	.word	_Label_1199
	.word	-32
	.word	4
	.word	_Label_1200
	.word	-36
	.word	4
	.word	_Label_1201
	.word	-40
	.word	4
	.word	_Label_1202
	.word	-44
	.word	4
	.word	0
_Label_1192:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1193:
	.ascii	"Pself\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1188\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1187\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1202:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_1894:
	push	r0
	sub	r1,1,r1
	bne	_Label_1894
	mov	1115,r13		! source line 1115
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0SE",r10
!   _temp_1203 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1123,r13		! source line 1123
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1204 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1204 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_1205 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1125,r13		! source line 1125
	mov	"\0\0SE",r10
!   _temp_1206 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1207 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1206  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0SE",r10
!   _temp_1208 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1127,r13		! source line 1127
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1209
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1210
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1211
	.word	12
	.word	4
	.word	_Label_1212
	.word	-12
	.word	4
	.word	_Label_1213
	.word	-16
	.word	4
	.word	_Label_1214
	.word	-20
	.word	4
	.word	_Label_1215
	.word	-24
	.word	4
	.word	_Label_1216
	.word	-28
	.word	4
	.word	_Label_1217
	.word	-32
	.word	4
	.word	0
_Label_1209:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1210:
	.ascii	"Pself\0"
	.align
_Label_1211:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1218
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1218:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1219
	.word	_sourceFileName
	.word	267		! line number
	.word	76		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1219:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	16,r1
_Label_1895:
	push	r0
	sub	r1,1,r1
	bne	_Label_1895
	mov	1160,r13		! source line 1160
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1220 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1220  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1166,r13		! source line 1166
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0AS",r10
!   numberWaitingForTurn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1169,r13		! source line 1169
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1170,r13		! source line 1170
	mov	"\0\0SE",r10
!   _temp_1222 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1172,r13		! source line 1172
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,24,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0SE",r10
!   _temp_1224 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1174,r13		! source line 1174
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,44,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+44]
! SEND STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0SE",r10
!   _temp_1226 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1176,r13		! source line 1176
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingForTurn = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,60,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   waitingForTurn = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+60]
! SEND STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0SE",r10
!   _temp_1228 = &waitingForTurn
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1233 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1234 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1233  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-64]
_Label_1229:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1234 then goto _Label_1232		
	load	[r14+-64],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1232
_Label_1230:
	mov	1183,r13		! source line 1183
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1237 = *i  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1237) then goto _Label_1236
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1236
!	jmp	_Label_1235
_Label_1235:
! THEN...
	mov	1187,r13		! source line 1187
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1238 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1238  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1187,r13		! source line 1187
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1236:
!   Increment the FOR-LOOP index variable and jump back
_Label_1231:
!   i = i + 4
	load	[r14+-64],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1229
! END FOR
_Label_1232:
! RETURN STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1239
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1240
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1241
	.word	-12
	.word	4
	.word	_Label_1242
	.word	-16
	.word	4
	.word	_Label_1243
	.word	-20
	.word	4
	.word	_Label_1244
	.word	-24
	.word	4
	.word	_Label_1245
	.word	-28
	.word	4
	.word	_Label_1246
	.word	-32
	.word	4
	.word	_Label_1247
	.word	-36
	.word	4
	.word	_Label_1248
	.word	-40
	.word	4
	.word	_Label_1249
	.word	-44
	.word	4
	.word	_Label_1250
	.word	-48
	.word	4
	.word	_Label_1251
	.word	-52
	.word	4
	.word	_Label_1252
	.word	-56
	.word	4
	.word	_Label_1253
	.word	-60
	.word	4
	.word	_Label_1254
	.word	-64
	.word	4
	.word	0
_Label_1239:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1240:
	.ascii	"Pself\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1228\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1227\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1226\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1225\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1224\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1223\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1222\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1221\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1220\0"
	.align
_Label_1254:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_1896:
	push	r0
	sub	r1,1,r1
	bne	_Label_1896
	mov	1194,r13		! source line 1194
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0SE",r10
!   _temp_1255 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1256 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1256  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1199,r13		! source line 1199
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1257 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1257  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1200,r13		! source line 1200
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1258 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1258  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1201,r13		! source line 1201
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0SE",r10
!   _temp_1259 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0SE",r10
!   _temp_1260 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1261
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1262
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1263
	.word	-12
	.word	4
	.word	_Label_1264
	.word	-16
	.word	4
	.word	_Label_1265
	.word	-20
	.word	4
	.word	_Label_1266
	.word	-24
	.word	4
	.word	_Label_1267
	.word	-28
	.word	4
	.word	_Label_1268
	.word	-32
	.word	4
	.word	0
_Label_1261:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1262:
	.ascii	"Pself\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	14,r1
_Label_1897:
	push	r0
	sub	r1,1,r1
	bne	_Label_1897
	mov	1208,r13		! source line 1208
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0SE",r10
!   _temp_1269 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0AS",r10
!   numberWaitingForTurn = numberWaitingForTurn + 1		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+20]
! IF STATEMENT...
	mov	1222,r13		! source line 1222
	mov	"\0\0IF",r10
!   if numberWaitingForTurn <= 1 then goto _Label_1271		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1271
!	jmp	_Label_1270
_Label_1270:
! THEN...
	mov	1223,r13		! source line 1223
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0SE",r10
!   _temp_1272 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   _temp_1273 = &waitingForTurn
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1272  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1271:
! WHILE STATEMENT...
	mov	1227,r13		! source line 1227
	mov	"\0\0WH",r10
_Label_1274:
!   if numberFreeFrames >= 1 then goto _Label_1276		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1276
!	jmp	_Label_1275
_Label_1275:
	mov	1227,r13		! source line 1227
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0SE",r10
!   _temp_1277 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-36]
!   _temp_1278 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1277  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1274
_Label_1276:
! ASSIGNMENT STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0AS",r10
	mov	1232,r13		! source line 1232
	mov	"\0\0SE",r10
!   _temp_1279 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Send message FindZeroAndSet
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0AS",r10
!   numberWaitingForTurn = numberWaitingForTurn - 1		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1238,r13		! source line 1238
	mov	"\0\0SE",r10
!   _temp_1280 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   _temp_1281 = &waitingForTurn
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1280  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1241,r13		! source line 1241
	mov	"\0\0SE",r10
!   _temp_1282 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1244,r13		! source line 1244
	mov	"\0\0AS",r10
!   _temp_1283 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1283		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1246,r13		! source line 1246
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1284
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1285
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1286
	.word	-12
	.word	4
	.word	_Label_1287
	.word	-16
	.word	4
	.word	_Label_1288
	.word	-20
	.word	4
	.word	_Label_1289
	.word	-24
	.word	4
	.word	_Label_1290
	.word	-28
	.word	4
	.word	_Label_1291
	.word	-32
	.word	4
	.word	_Label_1292
	.word	-36
	.word	4
	.word	_Label_1293
	.word	-40
	.word	4
	.word	_Label_1294
	.word	-44
	.word	4
	.word	_Label_1295
	.word	-48
	.word	4
	.word	_Label_1296
	.word	-52
	.word	4
	.word	_Label_1297
	.word	-56
	.word	4
	.word	0
_Label_1284:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1285:
	.ascii	"Pself\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1280\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1279\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1278\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1296:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1297:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	19,r1
_Label_1898:
	push	r0
	sub	r1,1,r1
	bne	_Label_1898
	mov	1251,r13		! source line 1251
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0SE",r10
!   _temp_1298 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0AS",r10
!   numberWaitingForTurn = numberWaitingForTurn + 1		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+20]
! IF STATEMENT...
	mov	1263,r13		! source line 1263
	mov	"\0\0IF",r10
!   if numberWaitingForTurn <= 1 then goto _Label_1300		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1300
!	jmp	_Label_1299
_Label_1299:
! THEN...
	mov	1264,r13		! source line 1264
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1264,r13		! source line 1264
	mov	"\0\0SE",r10
!   _temp_1301 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-56]
!   _temp_1302 = &waitingForTurn
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1301  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_1300:
! WHILE STATEMENT...
	mov	1271,r13		! source line 1271
	mov	"\0\0WH",r10
_Label_1303:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_1305		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1305
!	jmp	_Label_1304
_Label_1304:
	mov	1271,r13		! source line 1271
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1272,r13		! source line 1272
	mov	"\0\0SE",r10
!   _temp_1306 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   _temp_1307 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1306  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1303
_Label_1305:
! FOR STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1312 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1313 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1312  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-64]
_Label_1308:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1313 then goto _Label_1311		
	load	[r14+-64],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1311
_Label_1309:
	mov	1275,r13		! source line 1275
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1277,r13		! source line 1277
	mov	"\0\0AS",r10
	mov	1277,r13		! source line 1277
	mov	"\0\0SE",r10
!   _temp_1314 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message FindZeroAndSet
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	1281,r13		! source line 1281
	mov	"\0\0AS",r10
!   _temp_1315 = f * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   frameAddr = 1048576 + _temp_1315		(int)
	set	1048576,r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1285,r13		! source line 1285
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1310:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1308
! END FOR
_Label_1311:
! ASSIGNMENT STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1316 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1316 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1294,r13		! source line 1294
	mov	"\0\0AS",r10
!   numberWaitingForTurn = numberWaitingForTurn - 1		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0SE",r10
!   _temp_1317 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   _temp_1318 = &waitingForTurn
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1317  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0SE",r10
!   _temp_1319 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1320
	.word	12		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1321
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1322
	.word	12
	.word	4
	.word	_Label_1323
	.word	16
	.word	4
	.word	_Label_1324
	.word	-12
	.word	4
	.word	_Label_1325
	.word	-16
	.word	4
	.word	_Label_1326
	.word	-20
	.word	4
	.word	_Label_1327
	.word	-24
	.word	4
	.word	_Label_1328
	.word	-28
	.word	4
	.word	_Label_1329
	.word	-32
	.word	4
	.word	_Label_1330
	.word	-36
	.word	4
	.word	_Label_1331
	.word	-40
	.word	4
	.word	_Label_1332
	.word	-44
	.word	4
	.word	_Label_1333
	.word	-48
	.word	4
	.word	_Label_1334
	.word	-52
	.word	4
	.word	_Label_1335
	.word	-56
	.word	4
	.word	_Label_1336
	.word	-60
	.word	4
	.word	_Label_1337
	.word	-64
	.word	4
	.word	_Label_1338
	.word	-68
	.word	4
	.word	_Label_1339
	.word	-72
	.word	4
	.word	0
_Label_1320:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1321:
	.ascii	"Pself\0"
	.align
_Label_1322:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1323:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1328:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1329:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1330:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1331:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1332:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1333:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1337:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1338:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1339:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	15,r1
_Label_1899:
	push	r0
	sub	r1,1,r1
	bne	_Label_1899
	mov	1302,r13		! source line 1302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1310,r13		! source line 1310
	mov	"\0\0SE",r10
!   _temp_1340 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1313,r13		! source line 1313
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1341 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numFramesReturned = *_temp_1341  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-52]
! FOR STATEMENT...
	mov	1317,r13		! source line 1317
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1346 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1347 = numFramesReturned - 1		(int)
	load	[r14+-52],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1346  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_1342:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1347 then goto _Label_1345		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1345
_Label_1343:
	mov	1317,r13		! source line 1317
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0AS",r10
	mov	1318,r13		! source line 1318
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1319,r13		! source line 1319
	mov	"\0\0AS",r10
!   _temp_1348 = frameAddr - 1048576		(int)
	load	[r14+-56],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_1348 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
! SEND STATEMENT...
	mov	1320,r13		! source line 1320
	mov	"\0\0SE",r10
!   _temp_1349 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1344:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1342
! END FOR
_Label_1345:
! ASSIGNMENT STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + numFramesReturned		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-52],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0SE",r10
!   _temp_1350 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   _temp_1351 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1350  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0SE",r10
!   _temp_1352 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1353
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1354
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1355
	.word	12
	.word	4
	.word	_Label_1356
	.word	-12
	.word	4
	.word	_Label_1357
	.word	-16
	.word	4
	.word	_Label_1358
	.word	-20
	.word	4
	.word	_Label_1359
	.word	-24
	.word	4
	.word	_Label_1360
	.word	-28
	.word	4
	.word	_Label_1361
	.word	-32
	.word	4
	.word	_Label_1362
	.word	-36
	.word	4
	.word	_Label_1363
	.word	-40
	.word	4
	.word	_Label_1364
	.word	-44
	.word	4
	.word	_Label_1365
	.word	-48
	.word	4
	.word	_Label_1366
	.word	-52
	.word	4
	.word	_Label_1367
	.word	-56
	.word	4
	.word	_Label_1368
	.word	-60
	.word	4
	.word	0
_Label_1353:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1354:
	.ascii	"Pself\0"
	.align
_Label_1355:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1351\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1350\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1365:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1366:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_1367:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1368:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1369
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1369:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1370
	.word	_sourceFileName
	.word	288		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1370:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_1900:
	push	r0
	sub	r1,1,r1
	bne	_Label_1900
	mov	1340,r13		! source line 1340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1344,r13		! source line 1344
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0AS",r10
!   _temp_1371 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1373 = &_temp_1372
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1373 = _temp_1373 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1375:
!   Data Move: *_temp_1373 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1373 = _temp_1373 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1374 = _temp_1374 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1374) then goto _Label_1375
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1375
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1376 = &_temp_1372
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1901
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1901:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1371 = *_temp_1376  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1902:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1902
! RETURN STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1377
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1378
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1379
	.word	-12
	.word	4
	.word	_Label_1380
	.word	-16
	.word	4
	.word	_Label_1381
	.word	-20
	.word	4
	.word	_Label_1382
	.word	-104
	.word	84
	.word	_Label_1383
	.word	-108
	.word	4
	.word	0
_Label_1377:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1378:
	.ascii	"Pself\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_1903:
	push	r0
	sub	r1,1,r1
	bne	_Label_1903
	mov	1350,r13		! source line 1350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1384 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1384  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1355,r13		! source line 1355
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1385 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1385  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1356,r13		! source line 1356
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1390 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1391 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1390  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1386:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1391 then goto _Label_1389		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1389
_Label_1387:
	mov	1357,r13		! source line 1357
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1392 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1392  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1358,r13		! source line 1358
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1394 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1394 [i ] into _temp_1395
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1393 = _temp_1395		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1393  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1359,r13		! source line 1359
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1396 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1396  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1360,r13		! source line 1360
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1398 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1398 [i ] into _temp_1399
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1397 = *_temp_1399  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1397  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1361,r13		! source line 1361
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1400 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1400  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1362,r13		! source line 1362
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1401 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1401  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1363,r13		! source line 1363
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1402 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1402  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1364,r13		! source line 1364
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1365,r13		! source line 1365
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1404) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1403  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1403  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1365,r13		! source line 1365
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1405 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1405  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1366,r13		! source line 1366
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1367,r13		! source line 1367
	mov	"\0\0IF",r10
	mov	1367,r13		! source line 1367
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1409) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1408  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1408) then goto _Label_1407
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1407
!	jmp	_Label_1406
_Label_1406:
! THEN...
	mov	1368,r13		! source line 1368
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1368,r13		! source line 1368
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1411) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1410  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1410  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1368,r13		! source line 1368
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1412
_Label_1407:
! ELSE...
	mov	1370,r13		! source line 1370
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1413 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1413  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1370,r13		! source line 1370
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1412:
! CALL STATEMENT...
!   _temp_1414 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1414  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1372,r13		! source line 1372
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1373,r13		! source line 1373
	mov	"\0\0IF",r10
	mov	1373,r13		! source line 1373
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1417) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1415 else goto _Label_1416
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1416
	jmp	_Label_1415
_Label_1415:
! THEN...
	mov	1374,r13		! source line 1374
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1418 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1418  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1374,r13		! source line 1374
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1419
_Label_1416:
! ELSE...
	mov	1376,r13		! source line 1376
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1420 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1420  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1376,r13		! source line 1376
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1419:
! CALL STATEMENT...
!   _temp_1421 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1421  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1378,r13		! source line 1378
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0IF",r10
	mov	1379,r13		! source line 1379
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1424) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1422 else goto _Label_1423
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1423
	jmp	_Label_1422
_Label_1422:
! THEN...
	mov	1380,r13		! source line 1380
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1425 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1425  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1380,r13		! source line 1380
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1426
_Label_1423:
! ELSE...
	mov	1382,r13		! source line 1382
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1427 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1427  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1382,r13		! source line 1382
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1426:
! CALL STATEMENT...
!   _temp_1428 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1428  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1384,r13		! source line 1384
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0IF",r10
	mov	1385,r13		! source line 1385
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1431) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1429 else goto _Label_1430
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1430
	jmp	_Label_1429
_Label_1429:
! THEN...
	mov	1386,r13		! source line 1386
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1432 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1432  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1386,r13		! source line 1386
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1433
_Label_1430:
! ELSE...
	mov	1388,r13		! source line 1388
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1434 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1434  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1388,r13		! source line 1388
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1433:
! CALL STATEMENT...
!   _temp_1435 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1435  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1390,r13		! source line 1390
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1391,r13		! source line 1391
	mov	"\0\0IF",r10
	mov	1391,r13		! source line 1391
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1438) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1436 else goto _Label_1437
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1437
	jmp	_Label_1436
_Label_1436:
! THEN...
	mov	1392,r13		! source line 1392
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1439 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1439  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1392,r13		! source line 1392
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1440
_Label_1437:
! ELSE...
	mov	1394,r13		! source line 1394
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1441 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1441  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1394,r13		! source line 1394
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1440:
! CALL STATEMENT...
!   Call the function
	mov	1396,r13		! source line 1396
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1388:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1386
! END FOR
_Label_1389:
! RETURN STATEMENT...
	mov	1357,r13		! source line 1357
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1442
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1443
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1444
	.word	-12
	.word	4
	.word	_Label_1445
	.word	-16
	.word	4
	.word	_Label_1446
	.word	-20
	.word	4
	.word	_Label_1447
	.word	-24
	.word	4
	.word	_Label_1448
	.word	-28
	.word	4
	.word	_Label_1449
	.word	-32
	.word	4
	.word	_Label_1450
	.word	-36
	.word	4
	.word	_Label_1451
	.word	-40
	.word	4
	.word	_Label_1452
	.word	-44
	.word	4
	.word	_Label_1453
	.word	-48
	.word	4
	.word	_Label_1454
	.word	-52
	.word	4
	.word	_Label_1455
	.word	-56
	.word	4
	.word	_Label_1456
	.word	-60
	.word	4
	.word	_Label_1457
	.word	-64
	.word	4
	.word	_Label_1458
	.word	-68
	.word	4
	.word	_Label_1459
	.word	-72
	.word	4
	.word	_Label_1460
	.word	-76
	.word	4
	.word	_Label_1461
	.word	-80
	.word	4
	.word	_Label_1462
	.word	-84
	.word	4
	.word	_Label_1463
	.word	-88
	.word	4
	.word	_Label_1464
	.word	-92
	.word	4
	.word	_Label_1465
	.word	-96
	.word	4
	.word	_Label_1466
	.word	-100
	.word	4
	.word	_Label_1467
	.word	-104
	.word	4
	.word	_Label_1468
	.word	-108
	.word	4
	.word	_Label_1469
	.word	-112
	.word	4
	.word	_Label_1470
	.word	-116
	.word	4
	.word	_Label_1471
	.word	-120
	.word	4
	.word	_Label_1472
	.word	-124
	.word	4
	.word	_Label_1473
	.word	-128
	.word	4
	.word	_Label_1474
	.word	-132
	.word	4
	.word	_Label_1475
	.word	-136
	.word	4
	.word	_Label_1476
	.word	-140
	.word	4
	.word	_Label_1477
	.word	-144
	.word	4
	.word	_Label_1478
	.word	-148
	.word	4
	.word	_Label_1479
	.word	-152
	.word	4
	.word	_Label_1480
	.word	-156
	.word	4
	.word	_Label_1481
	.word	-160
	.word	4
	.word	_Label_1482
	.word	-164
	.word	4
	.word	_Label_1483
	.word	-168
	.word	4
	.word	0
_Label_1442:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1443:
	.ascii	"Pself\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1441\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1404\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1403\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1401\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1400\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1399\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1398\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1397\0"
	.align
_Label_1474:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1475:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1476:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1477:
	.byte	'?'
	.ascii	"_temp_1393\0"
	.align
_Label_1478:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1479:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1483:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_1904:
	push	r0
	sub	r1,1,r1
	bne	_Label_1904
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1407,r13		! source line 1407
	mov	"\0\0RE",r10
!   _temp_1486 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1486 [entry ] into _temp_1487
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1485 = *_temp_1487  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1484 = _temp_1485 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1484  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1488
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1489
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1490
	.word	12
	.word	4
	.word	_Label_1491
	.word	-12
	.word	4
	.word	_Label_1492
	.word	-16
	.word	4
	.word	_Label_1493
	.word	-20
	.word	4
	.word	_Label_1494
	.word	-24
	.word	4
	.word	0
_Label_1488:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1489:
	.ascii	"Pself\0"
	.align
_Label_1490:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1487\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1486\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1485\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_1905:
	push	r0
	sub	r1,1,r1
	bne	_Label_1905
	mov	1412,r13		! source line 1412
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1416,r13		! source line 1416
	mov	"\0\0RE",r10
!   _temp_1497 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1497 [entry ] into _temp_1498
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1496 = *_temp_1498  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1495 = _temp_1496 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1495  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1499
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1500
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1501
	.word	12
	.word	4
	.word	_Label_1502
	.word	-12
	.word	4
	.word	_Label_1503
	.word	-16
	.word	4
	.word	_Label_1504
	.word	-20
	.word	4
	.word	_Label_1505
	.word	-24
	.word	4
	.word	0
_Label_1499:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1500:
	.ascii	"Pself\0"
	.align
_Label_1501:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_1906:
	push	r0
	sub	r1,1,r1
	bne	_Label_1906
	mov	1421,r13		! source line 1421
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0AS",r10
!   _temp_1506 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1506 [entry ] into _temp_1507
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1511 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1511 [entry ] into _temp_1512
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1510 = *_temp_1512  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1509 = _temp_1510 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1508 = _temp_1509 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1507 = _temp_1508  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1426,r13		! source line 1426
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1513
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1514
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1515
	.word	12
	.word	4
	.word	_Label_1516
	.word	16
	.word	4
	.word	_Label_1517
	.word	-12
	.word	4
	.word	_Label_1518
	.word	-16
	.word	4
	.word	_Label_1519
	.word	-20
	.word	4
	.word	_Label_1520
	.word	-24
	.word	4
	.word	_Label_1521
	.word	-28
	.word	4
	.word	_Label_1522
	.word	-32
	.word	4
	.word	_Label_1523
	.word	-36
	.word	4
	.word	0
_Label_1513:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1514:
	.ascii	"Pself\0"
	.align
_Label_1515:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1516:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_1907:
	push	r0
	sub	r1,1,r1
	bne	_Label_1907
	mov	1431,r13		! source line 1431
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1435,r13		! source line 1435
	mov	"\0\0RE",r10
!   _temp_1527 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1527 [entry ] into _temp_1528
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1526 = *_temp_1528  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1525 = _temp_1526 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1525) then goto _Label_1529
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1529
!   _temp_1524 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1530
_Label_1529:
!   _temp_1524 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1530:
!   ReturnResult: _temp_1524  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1531
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1532
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1533
	.word	12
	.word	4
	.word	_Label_1534
	.word	-16
	.word	4
	.word	_Label_1535
	.word	-20
	.word	4
	.word	_Label_1536
	.word	-24
	.word	4
	.word	_Label_1537
	.word	-28
	.word	4
	.word	_Label_1538
	.word	-9
	.word	1
	.word	0
_Label_1531:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1532:
	.ascii	"Pself\0"
	.align
_Label_1533:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1538:
	.byte	'C'
	.ascii	"_temp_1524\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_1908:
	push	r0
	sub	r1,1,r1
	bne	_Label_1908
	mov	1440,r13		! source line 1440
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0RE",r10
!   _temp_1542 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1542 [entry ] into _temp_1543
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1541 = *_temp_1543  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1540 = _temp_1541 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1540) then goto _Label_1544
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1544
!   _temp_1539 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1545
_Label_1544:
!   _temp_1539 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1545:
!   ReturnResult: _temp_1539  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1546
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1547
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1548
	.word	12
	.word	4
	.word	_Label_1549
	.word	-16
	.word	4
	.word	_Label_1550
	.word	-20
	.word	4
	.word	_Label_1551
	.word	-24
	.word	4
	.word	_Label_1552
	.word	-28
	.word	4
	.word	_Label_1553
	.word	-9
	.word	1
	.word	0
_Label_1546:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1547:
	.ascii	"Pself\0"
	.align
_Label_1548:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1553:
	.byte	'C'
	.ascii	"_temp_1539\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_1909:
	push	r0
	sub	r1,1,r1
	bne	_Label_1909
	mov	1449,r13		! source line 1449
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0RE",r10
!   _temp_1557 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1557 [entry ] into _temp_1558
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1556 = *_temp_1558  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1555 = _temp_1556 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1555) then goto _Label_1559
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1559
!   _temp_1554 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1560
_Label_1559:
!   _temp_1554 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1560:
!   ReturnResult: _temp_1554  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1561
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1562
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1563
	.word	12
	.word	4
	.word	_Label_1564
	.word	-16
	.word	4
	.word	_Label_1565
	.word	-20
	.word	4
	.word	_Label_1566
	.word	-24
	.word	4
	.word	_Label_1567
	.word	-28
	.word	4
	.word	_Label_1568
	.word	-9
	.word	1
	.word	0
_Label_1561:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1562:
	.ascii	"Pself\0"
	.align
_Label_1563:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1565:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1566:
	.byte	'?'
	.ascii	"_temp_1556\0"
	.align
_Label_1567:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1568:
	.byte	'C'
	.ascii	"_temp_1554\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_1910:
	push	r0
	sub	r1,1,r1
	bne	_Label_1910
	mov	1458,r13		! source line 1458
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1462,r13		! source line 1462
	mov	"\0\0RE",r10
!   _temp_1572 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1572 [entry ] into _temp_1573
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1571 = *_temp_1573  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1570 = _temp_1571 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1570) then goto _Label_1574
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1574
!   _temp_1569 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1575
_Label_1574:
!   _temp_1569 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1575:
!   ReturnResult: _temp_1569  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1576
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1577
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1578
	.word	12
	.word	4
	.word	_Label_1579
	.word	-16
	.word	4
	.word	_Label_1580
	.word	-20
	.word	4
	.word	_Label_1581
	.word	-24
	.word	4
	.word	_Label_1582
	.word	-28
	.word	4
	.word	_Label_1583
	.word	-9
	.word	1
	.word	0
_Label_1576:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1577:
	.ascii	"Pself\0"
	.align
_Label_1578:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1583:
	.byte	'C'
	.ascii	"_temp_1569\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_1911:
	push	r0
	sub	r1,1,r1
	bne	_Label_1911
	mov	1467,r13		! source line 1467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0AS",r10
!   _temp_1584 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1584 [entry ] into _temp_1585
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1588 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1588 [entry ] into _temp_1589
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1587 = *_temp_1589  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1586 = _temp_1587 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1585 = _temp_1586  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1590
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1591
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1592
	.word	12
	.word	4
	.word	_Label_1593
	.word	-12
	.word	4
	.word	_Label_1594
	.word	-16
	.word	4
	.word	_Label_1595
	.word	-20
	.word	4
	.word	_Label_1596
	.word	-24
	.word	4
	.word	_Label_1597
	.word	-28
	.word	4
	.word	_Label_1598
	.word	-32
	.word	4
	.word	0
_Label_1590:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1591:
	.ascii	"Pself\0"
	.align
_Label_1592:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_1912:
	push	r0
	sub	r1,1,r1
	bne	_Label_1912
	mov	1476,r13		! source line 1476
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0AS",r10
!   _temp_1599 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1599 [entry ] into _temp_1600
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1603 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1603 [entry ] into _temp_1604
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1602 = *_temp_1604  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1601 = _temp_1602 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1600 = _temp_1601  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1605
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1606
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1607
	.word	12
	.word	4
	.word	_Label_1608
	.word	-12
	.word	4
	.word	_Label_1609
	.word	-16
	.word	4
	.word	_Label_1610
	.word	-20
	.word	4
	.word	_Label_1611
	.word	-24
	.word	4
	.word	_Label_1612
	.word	-28
	.word	4
	.word	_Label_1613
	.word	-32
	.word	4
	.word	0
_Label_1605:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1606:
	.ascii	"Pself\0"
	.align
_Label_1607:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_1913:
	push	r0
	sub	r1,1,r1
	bne	_Label_1913
	mov	1485,r13		! source line 1485
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0AS",r10
!   _temp_1614 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1614 [entry ] into _temp_1615
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1618 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1618 [entry ] into _temp_1619
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1617 = *_temp_1619  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1616 = _temp_1617 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1615 = _temp_1616  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1620
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1621
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1622
	.word	12
	.word	4
	.word	_Label_1623
	.word	-12
	.word	4
	.word	_Label_1624
	.word	-16
	.word	4
	.word	_Label_1625
	.word	-20
	.word	4
	.word	_Label_1626
	.word	-24
	.word	4
	.word	_Label_1627
	.word	-28
	.word	4
	.word	_Label_1628
	.word	-32
	.word	4
	.word	0
_Label_1620:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1621:
	.ascii	"Pself\0"
	.align
_Label_1622:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_1914:
	push	r0
	sub	r1,1,r1
	bne	_Label_1914
	mov	1494,r13		! source line 1494
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0AS",r10
!   _temp_1629 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1629 [entry ] into _temp_1630
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1633 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1633 [entry ] into _temp_1634
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1632 = *_temp_1634  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1631 = _temp_1632 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1630 = _temp_1631  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1635
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1636
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1637
	.word	12
	.word	4
	.word	_Label_1638
	.word	-12
	.word	4
	.word	_Label_1639
	.word	-16
	.word	4
	.word	_Label_1640
	.word	-20
	.word	4
	.word	_Label_1641
	.word	-24
	.word	4
	.word	_Label_1642
	.word	-28
	.word	4
	.word	_Label_1643
	.word	-32
	.word	4
	.word	0
_Label_1635:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1636:
	.ascii	"Pself\0"
	.align
_Label_1637:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1640:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_1915:
	push	r0
	sub	r1,1,r1
	bne	_Label_1915
	mov	1503,r13		! source line 1503
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0AS",r10
!   _temp_1644 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1644 [entry ] into _temp_1645
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1648 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1648 [entry ] into _temp_1649
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1647 = *_temp_1649  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1646 = _temp_1647 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1645 = _temp_1646  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1650
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1651
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1652
	.word	12
	.word	4
	.word	_Label_1653
	.word	-12
	.word	4
	.word	_Label_1654
	.word	-16
	.word	4
	.word	_Label_1655
	.word	-20
	.word	4
	.word	_Label_1656
	.word	-24
	.word	4
	.word	_Label_1657
	.word	-28
	.word	4
	.word	_Label_1658
	.word	-32
	.word	4
	.word	0
_Label_1650:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1651:
	.ascii	"Pself\0"
	.align
_Label_1652:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1654:
	.byte	'?'
	.ascii	"_temp_1648\0"
	.align
_Label_1655:
	.byte	'?'
	.ascii	"_temp_1647\0"
	.align
_Label_1656:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1657:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1658:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_1916:
	push	r0
	sub	r1,1,r1
	bne	_Label_1916
	mov	1512,r13		! source line 1512
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0AS",r10
!   _temp_1659 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1659 [entry ] into _temp_1660
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1663 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1663 [entry ] into _temp_1664
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1662 = *_temp_1664  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1661 = _temp_1662 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1660 = _temp_1661  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1665
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1666
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1667
	.word	12
	.word	4
	.word	_Label_1668
	.word	-12
	.word	4
	.word	_Label_1669
	.word	-16
	.word	4
	.word	_Label_1670
	.word	-20
	.word	4
	.word	_Label_1671
	.word	-24
	.word	4
	.word	_Label_1672
	.word	-28
	.word	4
	.word	_Label_1673
	.word	-32
	.word	4
	.word	0
_Label_1665:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1666:
	.ascii	"Pself\0"
	.align
_Label_1667:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_1917:
	push	r0
	sub	r1,1,r1
	bne	_Label_1917
	mov	1521,r13		! source line 1521
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0AS",r10
!   _temp_1674 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1674 [entry ] into _temp_1675
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1678 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1678 [entry ] into _temp_1679
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1677 = *_temp_1679  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1676 = _temp_1677 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1675 = _temp_1676  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1680
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1681
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1682
	.word	12
	.word	4
	.word	_Label_1683
	.word	-12
	.word	4
	.word	_Label_1684
	.word	-16
	.word	4
	.word	_Label_1685
	.word	-20
	.word	4
	.word	_Label_1686
	.word	-24
	.word	4
	.word	_Label_1687
	.word	-28
	.word	4
	.word	_Label_1688
	.word	-32
	.word	4
	.word	0
_Label_1680:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1681:
	.ascii	"Pself\0"
	.align
_Label_1682:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1677\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1676\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_1918:
	push	r0
	sub	r1,1,r1
	bne	_Label_1918
	mov	1530,r13		! source line 1530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0AS",r10
!   _temp_1689 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1689 [entry ] into _temp_1690
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1693 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1693 [entry ] into _temp_1694
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1692 = *_temp_1694  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1691 = _temp_1692 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1690 = _temp_1691  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1695
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1696
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1697
	.word	12
	.word	4
	.word	_Label_1698
	.word	-12
	.word	4
	.word	_Label_1699
	.word	-16
	.word	4
	.word	_Label_1700
	.word	-20
	.word	4
	.word	_Label_1701
	.word	-24
	.word	4
	.word	_Label_1702
	.word	-28
	.word	4
	.word	_Label_1703
	.word	-32
	.word	4
	.word	0
_Label_1695:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1696:
	.ascii	"Pself\0"
	.align
_Label_1697:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_1919:
	push	r0
	sub	r1,1,r1
	bne	_Label_1919
	mov	1539,r13		! source line 1539
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1705 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1705 [0 ] into _temp_1706
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1704 = _temp_1706		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1707 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1704  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1707  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1545,r13		! source line 1545
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1708
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1709
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1710
	.word	-12
	.word	4
	.word	_Label_1711
	.word	-16
	.word	4
	.word	_Label_1712
	.word	-20
	.word	4
	.word	_Label_1713
	.word	-24
	.word	4
	.word	0
_Label_1708:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1709:
	.ascii	"Pself\0"
	.align
_Label_1710:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1711:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1712:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1713:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_1920:
	push	r0
	sub	r1,1,r1
	bne	_Label_1920
	mov	1550,r13		! source line 1550
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1565,r13		! source line 1565
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1714
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1714
	jmp	_Label_1715
_Label_1714:
! THEN...
	mov	1566,r13		! source line 1566
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1566,r13		! source line 1566
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1716
_Label_1715:
! ELSE...
	mov	1567,r13		! source line 1567
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1567,r13		! source line 1567
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1718		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1718
!	jmp	_Label_1717
_Label_1717:
! THEN...
	mov	1568,r13		! source line 1568
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1568,r13		! source line 1568
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1718:
! END IF...
_Label_1716:
! ASSIGNMENT STATEMENT...
	mov	1570,r13		! source line 1570
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1571,r13		! source line 1571
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1574,r13		! source line 1574
	mov	"\0\0WH",r10
_Label_1719:
!	jmp	_Label_1720
_Label_1720:
	mov	1574,r13		! source line 1574
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1575,r13		! source line 1575
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1723		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1723
!	jmp	_Label_1722
_Label_1722:
! THEN...
	mov	1576,r13		! source line 1576
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1724 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1724  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1576,r13		! source line 1576
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1577,r13		! source line 1577
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1723:
! IF STATEMENT...
	mov	1579,r13		! source line 1579
	mov	"\0\0IF",r10
	mov	1579,r13		! source line 1579
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1728) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1727  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1727 then goto _Label_1726 else goto _Label_1725
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1725
	jmp	_Label_1726
_Label_1725:
! THEN...
	mov	1580,r13		! source line 1580
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1729 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1729  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1580,r13		! source line 1580
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1581,r13		! source line 1581
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1726:
! ASSIGNMENT STATEMENT...
	mov	1583,r13		! source line 1583
	mov	"\0\0AS",r10
	mov	1583,r13		! source line 1583
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1731) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1730  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1730 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0WH",r10
_Label_1732:
!   if offset >= 8192 then goto _Label_1734		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1734
!	jmp	_Label_1733
_Label_1733:
	mov	1585,r13		! source line 1585
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1735 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1735  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1590,r13		! source line 1590
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1592,r13		! source line 1592
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1737		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1737
!	jmp	_Label_1736
_Label_1736:
! THEN...
	mov	1594,r13		! source line 1594
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1594,r13		! source line 1594
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1737:
! END WHILE...
	jmp	_Label_1732
_Label_1734:
! ASSIGNMENT STATEMENT...
	mov	1597,r13		! source line 1597
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1598,r13		! source line 1598
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1719
_Label_1721:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1738
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1739
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1740
	.word	12
	.word	4
	.word	_Label_1741
	.word	16
	.word	4
	.word	_Label_1742
	.word	20
	.word	4
	.word	_Label_1743
	.word	-9
	.word	1
	.word	_Label_1744
	.word	-16
	.word	4
	.word	_Label_1745
	.word	-20
	.word	4
	.word	_Label_1746
	.word	-24
	.word	4
	.word	_Label_1747
	.word	-28
	.word	4
	.word	_Label_1748
	.word	-10
	.word	1
	.word	_Label_1749
	.word	-32
	.word	4
	.word	_Label_1750
	.word	-36
	.word	4
	.word	_Label_1751
	.word	-40
	.word	4
	.word	_Label_1752
	.word	-44
	.word	4
	.word	_Label_1753
	.word	-48
	.word	4
	.word	0
_Label_1738:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1739:
	.ascii	"Pself\0"
	.align
_Label_1740:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1741:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1742:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1743:
	.byte	'C'
	.ascii	"_temp_1735\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1748:
	.byte	'C'
	.ascii	"_temp_1727\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1750:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1751:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1752:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1753:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_1921:
	push	r0
	sub	r1,1,r1
	bne	_Label_1921
	mov	1604,r13		! source line 1604
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1615,r13		! source line 1615
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1754
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1754
	jmp	_Label_1755
_Label_1754:
! THEN...
	mov	1616,r13		! source line 1616
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1616,r13		! source line 1616
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1756
_Label_1755:
! ELSE...
	mov	1617,r13		! source line 1617
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1617,r13		! source line 1617
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1758		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1758
!	jmp	_Label_1757
_Label_1757:
! THEN...
	mov	1618,r13		! source line 1618
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1618,r13		! source line 1618
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1758:
! END IF...
_Label_1756:
! ASSIGNMENT STATEMENT...
	mov	1620,r13		! source line 1620
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1621,r13		! source line 1621
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1622,r13		! source line 1622
	mov	"\0\0WH",r10
_Label_1759:
!	jmp	_Label_1760
_Label_1760:
	mov	1622,r13		! source line 1622
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1623,r13		! source line 1623
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1765		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1765
	jmp	_Label_1762
_Label_1765:
	mov	1624,r13		! source line 1624
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1767) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1766  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1766 then goto _Label_1764 else goto _Label_1762
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1762
	jmp	_Label_1764
_Label_1764:
	mov	1625,r13		! source line 1625
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1769) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1768  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1768 then goto _Label_1763 else goto _Label_1762
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1762
	jmp	_Label_1763
_Label_1762:
! THEN...
	mov	1626,r13		! source line 1626
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1626,r13		! source line 1626
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1763:
! ASSIGNMENT STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0AS",r10
	mov	1628,r13		! source line 1628
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1771) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1770  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1770 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0WH",r10
_Label_1772:
!   if offset >= 8192 then goto _Label_1774		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1774
!	jmp	_Label_1773
_Label_1773:
	mov	1629,r13		! source line 1629
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1775 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1775  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1632,r13		! source line 1632
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1634,r13		! source line 1634
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1777		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1777
!	jmp	_Label_1776
_Label_1776:
! THEN...
	mov	1636,r13		! source line 1636
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1636,r13		! source line 1636
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1777:
! END WHILE...
	jmp	_Label_1772
_Label_1774:
! ASSIGNMENT STATEMENT...
	mov	1639,r13		! source line 1639
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1640,r13		! source line 1640
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1759
_Label_1761:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1778
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1779
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1780
	.word	12
	.word	4
	.word	_Label_1781
	.word	16
	.word	4
	.word	_Label_1782
	.word	20
	.word	4
	.word	_Label_1783
	.word	-9
	.word	1
	.word	_Label_1784
	.word	-16
	.word	4
	.word	_Label_1785
	.word	-20
	.word	4
	.word	_Label_1786
	.word	-24
	.word	4
	.word	_Label_1787
	.word	-10
	.word	1
	.word	_Label_1788
	.word	-28
	.word	4
	.word	_Label_1789
	.word	-11
	.word	1
	.word	_Label_1790
	.word	-32
	.word	4
	.word	_Label_1791
	.word	-36
	.word	4
	.word	_Label_1792
	.word	-40
	.word	4
	.word	_Label_1793
	.word	-44
	.word	4
	.word	0
_Label_1778:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1779:
	.ascii	"Pself\0"
	.align
_Label_1780:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1781:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1782:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1783:
	.byte	'C'
	.ascii	"_temp_1775\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1770\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1787:
	.byte	'C'
	.ascii	"_temp_1768\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1789:
	.byte	'C'
	.ascii	"_temp_1766\0"
	.align
_Label_1790:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1791:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1792:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1793:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_1922:
	push	r0
	sub	r1,1,r1
	bne	_Label_1922
	mov	1646,r13		! source line 1646
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1670,r13		! source line 1670
	mov	"\0\0IF",r10
	mov	1670,r13		! source line 1670
	mov	"\0\0SE",r10
!   _temp_1797 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1798) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1797  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1796  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1796 >= 4 then goto _Label_1795		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1795
!	jmp	_Label_1794
_Label_1794:
! THEN...
	mov	1673,r13		! source line 1673
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1673,r13		! source line 1673
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1795:
! IF STATEMENT...
	mov	1677,r13		! source line 1677
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1800		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1800
!	jmp	_Label_1799
_Label_1799:
! THEN...
	mov	1678,r13		! source line 1678
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1678,r13		! source line 1678
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1800:
! ASSIGNMENT STATEMENT...
	mov	1681,r13		! source line 1681
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1683,r13		! source line 1683
	mov	"\0\0RE",r10
	mov	1683,r13		! source line 1683
	mov	"\0\0SE",r10
!   _temp_1803 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1802 = _temp_1803 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1804 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1805) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1802  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1804  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1801  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1801  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_1806
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1807
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1808
	.word	12
	.word	4
	.word	_Label_1809
	.word	16
	.word	4
	.word	_Label_1810
	.word	20
	.word	4
	.word	_Label_1811
	.word	-12
	.word	4
	.word	_Label_1812
	.word	-16
	.word	4
	.word	_Label_1813
	.word	-20
	.word	4
	.word	_Label_1814
	.word	-24
	.word	4
	.word	_Label_1815
	.word	-28
	.word	4
	.word	_Label_1816
	.word	-32
	.word	4
	.word	_Label_1817
	.word	-36
	.word	4
	.word	_Label_1818
	.word	-40
	.word	4
	.word	_Label_1819
	.word	-44
	.word	4
	.word	0
_Label_1806:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1807:
	.ascii	"Pself\0"
	.align
_Label_1808:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1809:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1810:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1805\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1804\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1803\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1802\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1801\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1819:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align

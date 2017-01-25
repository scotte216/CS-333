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
	.export	_P_Kernel_InitFirstProcess
	.export	_P_Kernel_StartUserProcess
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
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
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
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
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
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_209:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_208:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_207:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_206:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_205:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_204:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_203:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_202:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_201:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_200:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_199:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_198:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_197:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_196:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_195:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_194:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_193:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_192:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_191:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_190:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_189:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_188:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_187:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_186:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_185:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_184:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_183:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_182:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_181:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_180:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_179:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_178:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_177:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_176:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_175:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_174:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_173:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_172:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_171:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_170:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_169:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_168:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_167:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_166:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_165:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_164:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_163:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_162:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_161:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_160:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_159:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_158:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_157:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_156:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_155:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_154:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_153:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_152:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_151:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_150:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_149:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_148:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_147:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_146:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_144:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_143:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_142:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_141:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_140:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_138:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_137:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_136:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_135:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_134:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_133:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_132:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_131:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_130:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_129:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_128:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_127:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_126:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_125:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_124:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_123:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_122:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_121:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_120:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_119:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_118:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_117:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_116:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_115:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_114:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_113:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_112:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_111:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_110:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_109:
	.word	20			! length
	.ascii	"Thread ManagerThread"
	.align
_StringConst_108:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_107:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_106:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_105:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_104:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_103:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_102:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_101:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_100:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_99:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_98:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_97:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_96:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_95:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_94:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_93:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_92:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_91:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_90:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_89:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_88:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_87:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_86:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_85:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_84:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_83:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_82:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_81:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_80:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_79:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_78:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_77:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_76:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_75:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_74:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_73:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_72:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_71:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_70:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_69:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_68:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_67:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_66:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_65:
	.word	8			! length
	.ascii	"fileDesc"
	.align
_StringConst_64:
	.word	26			! length
	.ascii	"Handle_Sys_Close invoked!\n"
	.align
_StringConst_63:
	.word	13			! length
	.ascii	"newCurrentPos"
	.align
_StringConst_62:
	.word	8			! length
	.ascii	"fileDesc"
	.align
_StringConst_61:
	.word	16			! length
	.ascii	"Handle_Sys_seek\n"
	.align
_StringConst_60:
	.word	11			! length
	.ascii	"sizeInBytes"
	.align
_StringConst_59:
	.word	19			! length
	.ascii	"virt addr of buffer"
	.align
_StringConst_58:
	.word	8			! length
	.ascii	"fileDesc"
	.align
_StringConst_57:
	.word	26			! length
	.ascii	"Handle_Sys_Write invoked!\n"
	.align
_StringConst_56:
	.word	11			! length
	.ascii	"sizeInBytes"
	.align
_StringConst_55:
	.word	19			! length
	.ascii	"virt addr of buffer"
	.align
_StringConst_54:
	.word	8			! length
	.ascii	"fileDesc"
	.align
_StringConst_53:
	.word	25			! length
	.ascii	"Handle_Sys_Read invoked!\n"
	.align
_StringConst_52:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_51:
	.word	21			! length
	.ascii	"virt addr of filename"
	.align
_StringConst_50:
	.word	23			! length
	.ascii	"Error loading filename\n"
	.align
_StringConst_49:
	.word	25			! length
	.ascii	"Handle_Sys_Open invoked!\n"
	.align
_StringConst_48:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_47:
	.word	21			! length
	.ascii	"virt addr of filename"
	.align
_StringConst_46:
	.word	23			! length
	.ascii	"Error loading filename\n"
	.align
_StringConst_45:
	.word	27			! length
	.ascii	"Handle_Sys_Create invoked!\n"
	.align
_StringConst_44:
	.word	9			! length
	.ascii	"processID"
	.align
_StringConst_43:
	.word	25			! length
	.ascii	"Handle_Sys_Join invoked!\n"
	.align
_StringConst_42:
	.word	25			! length
	.ascii	"Handle_Sys_Fork invoked!\n"
	.align
_StringConst_41:
	.word	26			! length
	.ascii	"Handle_Sys_Yield invoked!\n"
	.align
_StringConst_40:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_39:
	.word	12			! length
	.ascii	"returnStatus"
	.align
_StringConst_38:
	.word	25			! length
	.ascii	"Handle_Sys_Exit invoked!\n"
	.align
_StringConst_37:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_36:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_35:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_34:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_33:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_32:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_25:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_24:
	.word	11			! length
	.ascii	"UserProgram"
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
	set	0x46d3d4da,r4		! myHashVal = 1188287706
	cmp	r3,r4
	be	_Label_217
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
_Label_217:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_218
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_218
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_218
_Label_218:
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
_Label_3064:
	push	r0
	sub	r1,1,r1
	bne	_Label_3064
	mov	8,r13		! source line 8
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_219 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_219  sizeInBytes=4
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
_Label_3065:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3065
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0SE",r10
!   _temp_223 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_224 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_223  sizeInBytes=4
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
!   _temp_225 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_226 = _temp_225 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_226 = 3  (sizeInBytes=4)
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
_Label_3066:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3066
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_228 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_229 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_228  sizeInBytes=4
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
!   _temp_230 = _function_216_IdleFunction
	set	_function_216_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_231 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_230  sizeInBytes=4
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
	.word	_Label_232
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_233
	.word	-12
	.word	4
	.word	_Label_234
	.word	-16
	.word	4
	.word	_Label_235
	.word	-20
	.word	4
	.word	_Label_236
	.word	-24
	.word	4
	.word	_Label_237
	.word	-28
	.word	4
	.word	_Label_238
	.word	-32
	.word	4
	.word	_Label_239
	.word	-36
	.word	4
	.word	_Label_240
	.word	-40
	.word	4
	.word	_Label_241
	.word	-44
	.word	4
	.word	_Label_242
	.word	-48
	.word	4
	.word	_Label_243
	.word	-52
	.word	4
	.word	_Label_244
	.word	-56
	.word	4
	.word	_Label_245
	.word	-60
	.word	4
	.word	0
_Label_232:
	.ascii	"InitializeScheduler\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_216_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_216_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3067:
	push	r0
	sub	r1,1,r1
	bne	_Label_3067
	mov	33,r13		! source line 33
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0WH",r10
_Label_246:
!	jmp	_Label_247
_Label_247:
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
!   _temp_251 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_249 else goto _Label_250
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_250
	jmp	_Label_249
_Label_249:
! THEN...
	mov	46,r13		! source line 46
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_252
_Label_250:
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
_Label_252:
! END WHILE...
	jmp	_Label_246
_Label_248:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_216_IdleFunction:
	.word	_sourceFileName
	.word	_Label_253
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_254
	.word	8
	.word	4
	.word	_Label_255
	.word	-12
	.word	4
	.word	_Label_256
	.word	-16
	.word	4
	.word	0
_Label_253:
	.ascii	"IdleFunction\0"
	.align
_Label_254:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_256:
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
_Label_3068:
	push	r0
	sub	r1,1,r1
	bne	_Label_3068
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
!   _temp_259 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_259 ) then goto _Label_258		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_258
!	jmp	_Label_257
_Label_257:
! THEN...
	mov	72,r13		! source line 72
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_261 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_261 [0 ] into _temp_262
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
!   _temp_260 = _temp_262		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_260  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_258:
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
!   _temp_263 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_263 = 3  (sizeInBytes=4)
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
_Label_264:
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_268 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_267  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_267 then goto _Label_266 else goto _Label_265
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_265
	jmp	_Label_266
_Label_265:
	mov	85,r13		! source line 85
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0AS",r10
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_269 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_270 = &_P_Kernel_threadManager
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
	jmp	_Label_264
_Label_266:
! IF STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_273 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_273 ) then goto _Label_272		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_272
!	jmp	_Label_271
_Label_271:
! THEN...
	mov	91,r13		! source line 91
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_275 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_275 [0 ] into _temp_276
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
!   _temp_274 = _temp_276		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_274  sizeInBytes=4
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
!   _temp_278 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_277 = *_temp_278  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_277) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = _temp_277 + 32
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
_Label_272:
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
	.word	_Label_280
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_281
	.word	8
	.word	4
	.word	_Label_282
	.word	-16
	.word	4
	.word	_Label_283
	.word	-20
	.word	4
	.word	_Label_284
	.word	-24
	.word	4
	.word	_Label_285
	.word	-28
	.word	4
	.word	_Label_286
	.word	-32
	.word	4
	.word	_Label_287
	.word	-36
	.word	4
	.word	_Label_288
	.word	-40
	.word	4
	.word	_Label_289
	.word	-44
	.word	4
	.word	_Label_290
	.word	-48
	.word	4
	.word	_Label_291
	.word	-52
	.word	4
	.word	_Label_292
	.word	-9
	.word	1
	.word	_Label_293
	.word	-56
	.word	4
	.word	_Label_294
	.word	-60
	.word	4
	.word	_Label_295
	.word	-64
	.word	4
	.word	_Label_296
	.word	-68
	.word	4
	.word	_Label_297
	.word	-72
	.word	4
	.word	_Label_298
	.word	-76
	.word	4
	.word	_Label_299
	.word	-80
	.word	4
	.word	0
_Label_280:
	.ascii	"Run\0"
	.align
_Label_281:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_292:
	.byte	'C'
	.ascii	"_temp_267\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_298:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_299:
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
_Label_3069:
	push	r0
	sub	r1,1,r1
	bne	_Label_3069
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
!   _temp_300 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_301 = _function_215_ThreadPrintShort
	set	_function_215_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_302 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_301  sizeInBytes=4
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
	.word	_Label_303
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_304
	.word	-12
	.word	4
	.word	_Label_305
	.word	-16
	.word	4
	.word	_Label_306
	.word	-20
	.word	4
	.word	_Label_307
	.word	-24
	.word	4
	.word	0
_Label_303:
	.ascii	"PrintReadyList\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_307:
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
_Label_3070:
	push	r0
	sub	r1,1,r1
	bne	_Label_3070
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
!   _temp_308 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_308  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_310 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_309 = *_temp_310  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
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
!   _temp_311 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
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
	.word	_Label_312
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_313
	.word	-12
	.word	4
	.word	_Label_314
	.word	-16
	.word	4
	.word	_Label_315
	.word	-20
	.word	4
	.word	_Label_316
	.word	-24
	.word	4
	.word	_Label_317
	.word	-28
	.word	4
	.word	_Label_318
	.word	-32
	.word	4
	.word	0
_Label_312:
	.ascii	"ThreadStartMain\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_317:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_318:
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
_Label_3071:
	push	r0
	sub	r1,1,r1
	bne	_Label_3071
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
!   _temp_319 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_320 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
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
	.word	_Label_321
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_322
	.word	-12
	.word	4
	.word	_Label_323
	.word	-16
	.word	4
	.word	_Label_324
	.word	-20
	.word	4
	.word	0
_Label_321:
	.ascii	"ThreadFinish\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_324:
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
_Label_3072:
	push	r0
	sub	r1,1,r1
	bne	_Label_3072
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
!   _temp_325 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_327		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_327
!	jmp	_Label_326
_Label_326:
! THEN...
	mov	168,r13		! source line 168
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_328 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
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
!   _temp_330 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_329 = *_temp_330  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_327:
! CALL STATEMENT...
!   _temp_331 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
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
!   _temp_332 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_333 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
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
	.word	_Label_334
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_335
	.word	8
	.word	4
	.word	_Label_336
	.word	-12
	.word	4
	.word	_Label_337
	.word	-16
	.word	4
	.word	_Label_338
	.word	-20
	.word	4
	.word	_Label_339
	.word	-24
	.word	4
	.word	_Label_340
	.word	-28
	.word	4
	.word	_Label_341
	.word	-32
	.word	4
	.word	_Label_342
	.word	-36
	.word	4
	.word	_Label_343
	.word	-40
	.word	4
	.word	0
_Label_334:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_335:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_343:
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
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
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
!   if newStatus != 1 then goto _Label_345		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_345
!	jmp	_Label_344
_Label_344:
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
	jmp	_Label_346
_Label_345:
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
_Label_346:
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
	.word	_Label_347
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_348
	.word	8
	.word	4
	.word	_Label_349
	.word	-12
	.word	4
	.word	0
_Label_347:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_348:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_349:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_215_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_215_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
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
!   if t == 0 then goto _Label_353		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_353
!   _temp_352 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_354
_Label_353:
!   _temp_352 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_354:
!   if _temp_352 then goto _Label_351 else goto _Label_350
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_350
	jmp	_Label_351
_Label_350:
! THEN...
	mov	782,r13		! source line 782
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_355 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
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
_Label_351:
! CALL STATEMENT...
!   _temp_356 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
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
!   _temp_358 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_357 = *_temp_358  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_359 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
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
!   _temp_368 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_367 = *_temp_368  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_362
	cmp	r1,2
	be	_Label_363
	cmp	r1,3
	be	_Label_364
	cmp	r1,4
	be	_Label_365
	cmp	r1,5
	be	_Label_366
	jmp	_Label_360
! CASE 1...
_Label_362:
! CALL STATEMENT...
!   _temp_369 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	790,r13		! source line 790
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0BR",r10
	jmp	_Label_361
! CASE 2...
_Label_363:
! CALL STATEMENT...
!   _temp_370 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	793,r13		! source line 793
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	794,r13		! source line 794
	mov	"\0\0BR",r10
	jmp	_Label_361
! CASE 3...
_Label_364:
! CALL STATEMENT...
!   _temp_371 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	796,r13		! source line 796
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	797,r13		! source line 797
	mov	"\0\0BR",r10
	jmp	_Label_361
! CASE 4...
_Label_365:
! CALL STATEMENT...
!   _temp_372 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	799,r13		! source line 799
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0BR",r10
	jmp	_Label_361
! CASE 5...
_Label_366:
! CALL STATEMENT...
!   _temp_373 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	802,r13		! source line 802
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0BR",r10
	jmp	_Label_361
! DEFAULT CASE...
_Label_360:
! CALL STATEMENT...
!   _temp_374 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
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
_Label_361:
! CALL STATEMENT...
!   _temp_375 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	807,r13		! source line 807
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_376 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	808,r13		! source line 808
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_377 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
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
_RoutineDescriptor__function_215_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_378
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_379
	.word	8
	.word	4
	.word	_Label_380
	.word	-16
	.word	4
	.word	_Label_381
	.word	-20
	.word	4
	.word	_Label_382
	.word	-24
	.word	4
	.word	_Label_383
	.word	-28
	.word	4
	.word	_Label_384
	.word	-32
	.word	4
	.word	_Label_385
	.word	-36
	.word	4
	.word	_Label_386
	.word	-40
	.word	4
	.word	_Label_387
	.word	-44
	.word	4
	.word	_Label_388
	.word	-48
	.word	4
	.word	_Label_389
	.word	-52
	.word	4
	.word	_Label_390
	.word	-56
	.word	4
	.word	_Label_391
	.word	-60
	.word	4
	.word	_Label_392
	.word	-64
	.word	4
	.word	_Label_393
	.word	-68
	.word	4
	.word	_Label_394
	.word	-72
	.word	4
	.word	_Label_395
	.word	-76
	.word	4
	.word	_Label_396
	.word	-9
	.word	1
	.word	_Label_397
	.word	-80
	.word	4
	.word	0
_Label_378:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_379:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_396:
	.byte	'C'
	.ascii	"_temp_352\0"
	.align
_Label_397:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_214_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_214_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3075:
	push	r0
	sub	r1,1,r1
	bne	_Label_3075
	mov	1135,r13		! source line 1135
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_398 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
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
_RoutineDescriptor__function_214_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_399
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_400
	.word	8
	.word	4
	.word	_Label_401
	.word	-12
	.word	4
	.word	0
_Label_399:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_400:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_398\0"
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
_Label_3076:
	push	r0
	sub	r1,1,r1
	bne	_Label_3076
	mov	1145,r13		! source line 1145
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_402 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
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
	.word	_Label_403
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_404
	.word	8
	.word	4
	.word	_Label_405
	.word	-12
	.word	4
	.word	0
_Label_403:
	.ascii	"ProcessFinish\0"
	.align
_Label_404:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_3077:
	push	r0
	sub	r1,1,r1
	bne	_Label_3077
	mov	1157,r13		! source line 1157
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0AS",r10
	mov	1164,r13		! source line 1164
	mov	"\0\0SE",r10
!   _temp_406 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=firstThread  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0SE",r10
!   _temp_407 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-16]
!   if intIsZero (firstThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_407  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0SE",r10
!   _temp_408 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (firstThread) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_408  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_409
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_410
	.word	-12
	.word	4
	.word	_Label_411
	.word	-16
	.word	4
	.word	_Label_412
	.word	-20
	.word	4
	.word	_Label_413
	.word	-24
	.word	4
	.word	0
_Label_409:
	.ascii	"InitFirstProcess\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_413:
	.byte	'P'
	.ascii	"firstThread\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_P_Kernel_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_3078:
	push	r0
	sub	r1,1,r1
	bne	_Label_3078
	mov	1172,r13		! source line 1172
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0AS",r10
	mov	1182,r13		! source line 1182
	mov	"\0\0SE",r10
!   _temp_414 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   Send message GetANewProcess
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_415 = pcb + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_415 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1184,r13		! source line 1184
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_416 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_416 = pcb  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0AS",r10
	mov	1186,r13		! source line 1186
	mov	"\0\0SE",r10
!   _temp_417 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-56]
!   _temp_418 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_417  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
	mov	1187,r13		! source line 1187
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_420 = pcb + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_419 = _temp_420		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_419  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0SE",r10
!   _temp_421 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1191,r13		! source line 1191
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_422 = pcb + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_423 = _temp_422 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: numPages = *_temp_423  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0AS",r10
!   userStackTop = numPages * 8192		(int)
	load	[r14+-92],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_424 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_424 [999 ] into _temp_425
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   initSystemStackTop = _temp_425		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1198,r13		! source line 1198
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! SEND STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_426 = pcb + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1204,r13		! source line 1204
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_427 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_427 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_428 = initSystemStackTop		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=userStackTop  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_428  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	1215,r13		! source line 1215
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_429
	.word	0		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_430
	.word	-12
	.word	4
	.word	_Label_431
	.word	-16
	.word	4
	.word	_Label_432
	.word	-20
	.word	4
	.word	_Label_433
	.word	-24
	.word	4
	.word	_Label_434
	.word	-28
	.word	4
	.word	_Label_435
	.word	-32
	.word	4
	.word	_Label_436
	.word	-36
	.word	4
	.word	_Label_437
	.word	-40
	.word	4
	.word	_Label_438
	.word	-44
	.word	4
	.word	_Label_439
	.word	-48
	.word	4
	.word	_Label_440
	.word	-52
	.word	4
	.word	_Label_441
	.word	-56
	.word	4
	.word	_Label_442
	.word	-60
	.word	4
	.word	_Label_443
	.word	-64
	.word	4
	.word	_Label_444
	.word	-68
	.word	4
	.word	_Label_445
	.word	-72
	.word	4
	.word	_Label_446
	.word	-76
	.word	4
	.word	_Label_447
	.word	-80
	.word	4
	.word	_Label_448
	.word	-84
	.word	4
	.word	_Label_449
	.word	-88
	.word	4
	.word	_Label_450
	.word	-92
	.word	4
	.word	_Label_451
	.word	-96
	.word	4
	.word	0
_Label_429:
	.ascii	"StartUserProcess\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_445:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_446:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_447:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_448:
	.byte	'I'
	.ascii	"userStackTop\0"
	.align
_Label_449:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_450:
	.byte	'I'
	.ascii	"numPages\0"
	.align
_Label_451:
	.byte	'I'
	.ascii	"oldIntStat\0"
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
_Label_3079:
	push	r0
	sub	r1,1,r1
	bne	_Label_3079
	mov	1757,r13		! source line 1757
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1769,r13		! source line 1769
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
	mov	1770,r13		! source line 1770
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1770,r13		! source line 1770
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
	.word	_Label_452
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_452:
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
	mov	7,r1
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
	mov	1775,r13		! source line 1775
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0IF",r10
!   _temp_456 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_457 = _temp_456 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_455 = *_temp_457  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_455 == 0 then goto _Label_454		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_454
!	jmp	_Label_453
_Label_453:
! THEN...
	mov	1790,r13		! source line 1790
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1790,r13		! source line 1790
	mov	"\0\0SE",r10
!   _temp_459 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_460 = _temp_459 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_458 = *_temp_460  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_458) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_454:
! RETURN STATEMENT...
	mov	1789,r13		! source line 1789
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_461
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_462
	.word	-12
	.word	4
	.word	_Label_463
	.word	-16
	.word	4
	.word	_Label_464
	.word	-20
	.word	4
	.word	_Label_465
	.word	-24
	.word	4
	.word	_Label_466
	.word	-28
	.word	4
	.word	_Label_467
	.word	-32
	.word	4
	.word	0
_Label_461:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_455\0"
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
	mov	1797,r13		! source line 1797
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1806,r13		! source line 1806
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1806,r13		! source line 1806
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
	.word	_Label_468
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_468:
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
_Label_3081:
	push	r0
	sub	r1,1,r1
	bne	_Label_3081
	mov	1811,r13		! source line 1811
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_469 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_469  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1818,r13		! source line 1818
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1818,r13		! source line 1818
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
	.word	_Label_470
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_471
	.word	-12
	.word	4
	.word	0
_Label_470:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_469\0"
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
_Label_3082:
	push	r0
	sub	r1,1,r1
	bne	_Label_3082
	mov	1823,r13		! source line 1823
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_472 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_472  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1830,r13		! source line 1830
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1830,r13		! source line 1830
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
	.word	_Label_473
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_474
	.word	-12
	.word	4
	.word	0
_Label_473:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_472\0"
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
_Label_3083:
	push	r0
	sub	r1,1,r1
	bne	_Label_3083
	mov	1835,r13		! source line 1835
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1841,r13		! source line 1841
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_475 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_475  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1842,r13		! source line 1842
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1842,r13		! source line 1842
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
	.word	_Label_476
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_477
	.word	-12
	.word	4
	.word	0
_Label_476:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_475\0"
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
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
	mov	1847,r13		! source line 1847
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_478 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_478  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1854,r13		! source line 1854
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1854,r13		! source line 1854
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
	.word	_Label_479
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_480
	.word	-12
	.word	4
	.word	0
_Label_479:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_478\0"
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
_Label_3085:
	push	r0
	sub	r1,1,r1
	bne	_Label_3085
	mov	1859,r13		! source line 1859
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1865,r13		! source line 1865
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_481 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_481  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1866,r13		! source line 1866
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1866,r13		! source line 1866
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
	.word	_Label_482
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_483
	.word	-12
	.word	4
	.word	0
_Label_482:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_481\0"
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
_Label_3086:
	push	r0
	sub	r1,1,r1
	bne	_Label_3086
	mov	1871,r13		! source line 1871
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_484 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_484  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1878,r13		! source line 1878
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1878,r13		! source line 1878
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
	.word	_Label_485
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_486
	.word	-12
	.word	4
	.word	0
_Label_485:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_484\0"
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
_Label_3087:
	push	r0
	sub	r1,1,r1
	bne	_Label_3087
	mov	1883,r13		! source line 1883
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_487 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1890,r13		! source line 1890
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1890,r13		! source line 1890
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
	.word	_Label_488
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_489
	.word	-12
	.word	4
	.word	0
_Label_488:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_213_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_213_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3088:
	push	r0
	sub	r1,1,r1
	bne	_Label_3088
	mov	1895,r13		! source line 1895
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_490 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_490  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1900,r13		! source line 1900
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_491 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_491  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1902,r13		! source line 1902
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_495 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_494 = *_temp_495  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_494 == 0 then goto _Label_493		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_493
!	jmp	_Label_492
_Label_492:
! THEN...
	mov	1906,r13		! source line 1906
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_497 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_496 = *_temp_497  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_496) then goto _runtimeErrorNullPointer
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
	jmp	_Label_498
_Label_493:
! ELSE...
	mov	1908,r13		! source line 1908
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_499 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_499  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_498:
! SEND STATEMENT...
	mov	1910,r13		! source line 1910
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
	mov	1916,r13		! source line 1916
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1916,r13		! source line 1916
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_213_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_500
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_501
	.word	8
	.word	4
	.word	_Label_502
	.word	-12
	.word	4
	.word	_Label_503
	.word	-16
	.word	4
	.word	_Label_504
	.word	-20
	.word	4
	.word	_Label_505
	.word	-24
	.word	4
	.word	_Label_506
	.word	-28
	.word	4
	.word	_Label_507
	.word	-32
	.word	4
	.word	_Label_508
	.word	-36
	.word	4
	.word	0
_Label_500:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_501:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_496\0"
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
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_490\0"
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
_Label_3089:
	push	r0
	sub	r1,1,r1
	bne	_Label_3089
	mov	1921,r13		! source line 1921
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1942,r13		! source line 1942
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3090
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_509
_Label_3090:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_509
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_509
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_523,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_523:
	jmp	_Label_515	! 1:	
	jmp	_Label_522	! 2:	
	jmp	_Label_512	! 3:	
	jmp	_Label_511	! 4:	
	jmp	_Label_514	! 5:	
	jmp	_Label_513	! 6:	
	jmp	_Label_516	! 7:	
	jmp	_Label_517	! 8:	
	jmp	_Label_518	! 9:	
	jmp	_Label_519	! 10:	
	jmp	_Label_520	! 11:	
	jmp	_Label_521	! 12:	
! CASE 4...
_Label_511:
! RETURN STATEMENT...
	mov	1944,r13		! source line 1944
	mov	"\0\0RE",r10
!   Call the function
	mov	1944,r13		! source line 1944
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_524  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_524  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_512:
! CALL STATEMENT...
!   Call the function
	mov	1946,r13		! source line 1946
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1947,r13		! source line 1947
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_513:
! RETURN STATEMENT...
	mov	1949,r13		! source line 1949
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1949,r13		! source line 1949
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_525  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_525  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_514:
! RETURN STATEMENT...
	mov	1951,r13		! source line 1951
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1951,r13		! source line 1951
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_526  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_526  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_515:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1953,r13		! source line 1953
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1954,r13		! source line 1954
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_516:
! RETURN STATEMENT...
	mov	1956,r13		! source line 1956
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1956,r13		! source line 1956
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_527  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_527  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_517:
! RETURN STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1958,r13		! source line 1958
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_528  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_528  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_518:
! RETURN STATEMENT...
	mov	1960,r13		! source line 1960
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
	mov	1960,r13		! source line 1960
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_529  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_529  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_519:
! RETURN STATEMENT...
	mov	1962,r13		! source line 1962
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
	mov	1962,r13		! source line 1962
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_530  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_530  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_520:
! RETURN STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1964,r13		! source line 1964
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_531  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_531  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_521:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1966,r13		! source line 1966
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1967,r13		! source line 1967
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_522:
! CALL STATEMENT...
!   Call the function
	mov	1969,r13		! source line 1969
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_509:
! CALL STATEMENT...
!   _temp_532 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_532  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1972,r13		! source line 1972
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1973,r13		! source line 1973
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1974,r13		! source line 1974
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_533 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_533  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1975,r13		! source line 1975
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_510:
! RETURN STATEMENT...
	mov	1977,r13		! source line 1977
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
	.word	_Label_534
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_535
	.word	8
	.word	4
	.word	_Label_536
	.word	12
	.word	4
	.word	_Label_537
	.word	16
	.word	4
	.word	_Label_538
	.word	20
	.word	4
	.word	_Label_539
	.word	24
	.word	4
	.word	_Label_540
	.word	-12
	.word	4
	.word	_Label_541
	.word	-16
	.word	4
	.word	_Label_542
	.word	-20
	.word	4
	.word	_Label_543
	.word	-24
	.word	4
	.word	_Label_544
	.word	-28
	.word	4
	.word	_Label_545
	.word	-32
	.word	4
	.word	_Label_546
	.word	-36
	.word	4
	.word	_Label_547
	.word	-40
	.word	4
	.word	_Label_548
	.word	-44
	.word	4
	.word	_Label_549
	.word	-48
	.word	4
	.word	0
_Label_534:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_535:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_536:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_537:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_538:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_539:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_524\0"
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
	mov	4,r1
_Label_3091:
	push	r0
	sub	r1,1,r1
	bne	_Label_3091
	mov	1982,r13		! source line 1982
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_550 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_550  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1983,r13		! source line 1983
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_551 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_551  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	1984,r13		! source line 1984
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	1984,r13		! source line 1984
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_552
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_553
	.word	8
	.word	4
	.word	_Label_554
	.word	-12
	.word	4
	.word	_Label_555
	.word	-16
	.word	4
	.word	0
_Label_552:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_553:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_550\0"
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
	mov	2,r1
_Label_3092:
	push	r0
	sub	r1,1,r1
	bne	_Label_3092
	mov	1990,r13		! source line 1990
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_556 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_556  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1991,r13		! source line 1991
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1991,r13		! source line 1991
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_557
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_558
	.word	-12
	.word	4
	.word	0
_Label_557:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_556\0"
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
	mov	2,r1
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	1996,r13		! source line 1996
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_559 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_559  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1997,r13		! source line 1997
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1997,r13		! source line 1997
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_560
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_561
	.word	-12
	.word	4
	.word	0
_Label_560:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_559\0"
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
	mov	2,r1
_Label_3094:
	push	r0
	sub	r1,1,r1
	bne	_Label_3094
	mov	2002,r13		! source line 2002
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_562 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_562  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2003,r13		! source line 2003
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2004,r13		! source line 2004
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_563
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_564
	.word	-12
	.word	4
	.word	0
_Label_563:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_562\0"
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
	mov	4,r1
_Label_3095:
	push	r0
	sub	r1,1,r1
	bne	_Label_3095
	mov	2009,r13		! source line 2009
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_565 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_565  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2010,r13		! source line 2010
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_566 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_566  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2011,r13		! source line 2011
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2013,r13		! source line 2013
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_567
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_568
	.word	8
	.word	4
	.word	_Label_569
	.word	-12
	.word	4
	.word	_Label_570
	.word	-16
	.word	4
	.word	0
_Label_567:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_568:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_565\0"
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
	mov	70,r1
_Label_3096:
	push	r0
	sub	r1,1,r1
	bne	_Label_3096
	mov	2018,r13		! source line 2018
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-220,r4
	mov	23,r3
_Label_3097:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3097
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-220]
! SEND STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0SE",r10
!   _temp_572 = &newAddrSpace
	add	r14,-220,r1
	store	r1,[r14+-124]
!   Send message Init
	load	[r14+-124],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0AS",r10
	mov	2032,r13		! source line 2032
	mov	"\0\0SE",r10
!   _temp_573 = &strBuffer
	add	r14,-244,r1
	store	r1,[r14+-120]
!   _temp_574 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_576 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: _temp_575 = *_temp_576  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if intIsZero (_temp_575) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_577 = _temp_575 + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_573  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_574  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! IF STATEMENT...
	mov	2036,r13		! source line 2036
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_579		(int)
	load	[r14+-248],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_579
!	jmp	_Label_578
_Label_578:
! THEN...
	mov	2037,r13		! source line 2037
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2037,r13		! source line 2037
	mov	"\0\0SE",r10
!   _temp_580 = &newAddrSpace
	add	r14,-220,r1
	store	r1,[r14+-100]
!   _temp_581 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=_temp_580  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2038,r13		! source line 2038
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-248],r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_579:
! ASSIGNMENT STATEMENT...
	mov	2041,r13		! source line 2041
	mov	"\0\0AS",r10
	mov	2041,r13		! source line 2041
	mov	"\0\0SE",r10
!   _temp_582 = &strBuffer
	add	r14,-244,r1
	store	r1,[r14+-92]
!   _temp_583 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_582  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2042,r13		! source line 2042
	mov	"\0\0IF",r10
!   if intIsZero (openFile) then goto _Label_584
	load	[r14+-252],r1
	cmp	r1,r0
	be	_Label_584
	jmp	_Label_585
_Label_584:
! THEN...
	mov	2043,r13		! source line 2043
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2043,r13		! source line 2043
	mov	"\0\0SE",r10
!   _temp_586 = &newAddrSpace
	add	r14,-220,r1
	store	r1,[r14+-84]
!   _temp_587 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_586  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2044,r13		! source line 2044
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_585:
! ASSIGNMENT STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0AS",r10
	mov	2047,r13		! source line 2047
	mov	"\0\0SE",r10
!   _temp_588 = &newAddrSpace
	add	r14,-220,r1
	store	r1,[r14+-76]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_588  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-252],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-256]
! SEND STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0SE",r10
!   _temp_589 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-252],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0AS",r10
!   _temp_590 = &newAddrSpace
	add	r14,-220,r1
	store	r1,[r14+-68]
!   _temp_591 = _temp_590 + 4
	load	[r14+-68],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Data Move: numPages = *_temp_591  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-272]
! ASSIGNMENT STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0AS",r10
!   userStackTop = numPages * 8192		(int)
	load	[r14+-272],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! ASSIGNMENT STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_592 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-60]
!   Move address of _temp_592 [999 ] into _temp_593
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   initSystemStackTop = _temp_593		(4 bytes)
	load	[r14+-56],r1
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2054,r13		! source line 2054
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-260]
! SEND STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_596 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_595 = *_temp_596  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_595) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_597 = _temp_595 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   _temp_594 = _temp_597		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-52]
!   _temp_598 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_594  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2061,r13		! source line 2061
	mov	"\0\0SE",r10
!   _temp_599 = &newAddrSpace
	add	r14,-220,r1
	store	r1,[r14+-32]
!   Send message SetToThisPageTable
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2062,r13		! source line 2062
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_601 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_600 = *_temp_601  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_600) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_602 = _temp_600 + 32
	load	[r14+-28],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_602 = newAddrSpace  (sizeInBytes=92)
	add	r14,-220,r5
	load	[r14+-20],r4
	mov	23,r3
_Label_3098:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3098
! ASSIGNMENT STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_603 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_603 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_604 = initSystemStackTop		(4 bytes)
	load	[r14+-268],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=userStackTop  sizeInBytes=4
	load	[r14+-264],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_604  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+8]
!   Call the function
	mov	2065,r13		! source line 2065
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,284,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_605
	.word	4		! total size of parameters
	.word	280		! frame size = 280
	.word	_Label_606
	.word	8
	.word	4
	.word	_Label_607
	.word	-12
	.word	4
	.word	_Label_608
	.word	-16
	.word	4
	.word	_Label_609
	.word	-20
	.word	4
	.word	_Label_610
	.word	-24
	.word	4
	.word	_Label_611
	.word	-28
	.word	4
	.word	_Label_612
	.word	-32
	.word	4
	.word	_Label_613
	.word	-36
	.word	4
	.word	_Label_614
	.word	-40
	.word	4
	.word	_Label_615
	.word	-44
	.word	4
	.word	_Label_616
	.word	-48
	.word	4
	.word	_Label_617
	.word	-52
	.word	4
	.word	_Label_618
	.word	-56
	.word	4
	.word	_Label_619
	.word	-60
	.word	4
	.word	_Label_620
	.word	-64
	.word	4
	.word	_Label_621
	.word	-68
	.word	4
	.word	_Label_622
	.word	-72
	.word	4
	.word	_Label_623
	.word	-76
	.word	4
	.word	_Label_624
	.word	-80
	.word	4
	.word	_Label_625
	.word	-84
	.word	4
	.word	_Label_626
	.word	-88
	.word	4
	.word	_Label_627
	.word	-92
	.word	4
	.word	_Label_628
	.word	-96
	.word	4
	.word	_Label_629
	.word	-100
	.word	4
	.word	_Label_630
	.word	-104
	.word	4
	.word	_Label_631
	.word	-108
	.word	4
	.word	_Label_632
	.word	-112
	.word	4
	.word	_Label_633
	.word	-116
	.word	4
	.word	_Label_634
	.word	-120
	.word	4
	.word	_Label_635
	.word	-124
	.word	4
	.word	_Label_636
	.word	-128
	.word	4
	.word	_Label_637
	.word	-220
	.word	92
	.word	_Label_638
	.word	-244
	.word	24
	.word	_Label_639
	.word	-248
	.word	4
	.word	_Label_640
	.word	-252
	.word	4
	.word	_Label_641
	.word	-256
	.word	4
	.word	_Label_642
	.word	-260
	.word	4
	.word	_Label_643
	.word	-264
	.word	4
	.word	_Label_644
	.word	-268
	.word	4
	.word	_Label_645
	.word	-272
	.word	4
	.word	0
_Label_605:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_606:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_573\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_637:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_638:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_639:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_640:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_641:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_642:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_643:
	.byte	'I'
	.ascii	"userStackTop\0"
	.align
_Label_644:
	.byte	'P'
	.ascii	"initSystemStackTop\0"
	.align
_Label_645:
	.byte	'I'
	.ascii	"numPages\0"
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
	mov	21,r1
_Label_3099:
	push	r0
	sub	r1,1,r1
	bne	_Label_3099
	mov	2072,r13		! source line 2072
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_646 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_646  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2077,r13		! source line 2077
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2079,r13		! source line 2079
	mov	"\0\0AS",r10
	mov	2079,r13		! source line 2079
	mov	"\0\0SE",r10
!   _temp_647 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-44]
!   _temp_648 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_650 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_649 = *_temp_650  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_649) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_651 = _temp_649 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_647  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_648  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! IF STATEMENT...
	mov	2083,r13		! source line 2083
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_653		(int)
	load	[r14+-76],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_653
!	jmp	_Label_652
_Label_652:
! THEN...
	mov	2084,r13		! source line 2084
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_654 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_654  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2084,r13		! source line 2084
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2085,r13		! source line 2085
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_653:
! CALL STATEMENT...
!   _temp_655 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_655  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2087,r13		! source line 2087
	mov	"\0\0CA",r10
	call	_P_System_printPtr
! CALL STATEMENT...
!   _temp_656 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_656  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2088,r13		! source line 2088
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_657 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_657  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2089,r13		! source line 2089
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2090,r13		! source line 2090
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2092,r13		! source line 2092
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_658
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_659
	.word	8
	.word	4
	.word	_Label_660
	.word	-12
	.word	4
	.word	_Label_661
	.word	-16
	.word	4
	.word	_Label_662
	.word	-20
	.word	4
	.word	_Label_663
	.word	-24
	.word	4
	.word	_Label_664
	.word	-28
	.word	4
	.word	_Label_665
	.word	-32
	.word	4
	.word	_Label_666
	.word	-36
	.word	4
	.word	_Label_667
	.word	-40
	.word	4
	.word	_Label_668
	.word	-44
	.word	4
	.word	_Label_669
	.word	-48
	.word	4
	.word	_Label_670
	.word	-72
	.word	24
	.word	_Label_671
	.word	-76
	.word	4
	.word	0
_Label_658:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_659:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_657\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_664:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_666:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_667:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_670:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_671:
	.byte	'I'
	.ascii	"i\0"
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
	mov	21,r1
_Label_3100:
	push	r0
	sub	r1,1,r1
	bne	_Label_3100
	mov	2097,r13		! source line 2097
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_672 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_672  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2102,r13		! source line 2102
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2104,r13		! source line 2104
	mov	"\0\0AS",r10
	mov	2104,r13		! source line 2104
	mov	"\0\0SE",r10
!   _temp_673 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-44]
!   _temp_674 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_676 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-32]
!   Data Move: _temp_675 = *_temp_676  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_675) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_677 = _temp_675 + 32
	load	[r14+-36],r1
	add	r1,32,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_673  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_674  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! IF STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_679		(int)
	load	[r14+-76],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_679
!	jmp	_Label_678
_Label_678:
! THEN...
	mov	2109,r13		! source line 2109
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_680 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_680  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2109,r13		! source line 2109
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2110,r13		! source line 2110
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_679:
! CALL STATEMENT...
!   _temp_681 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_681  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2112,r13		! source line 2112
	mov	"\0\0CA",r10
	call	_P_System_printPtr
! CALL STATEMENT...
!   _temp_682 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_682  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2113,r13		! source line 2113
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_683 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_683  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2114,r13		! source line 2114
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	2115,r13		! source line 2115
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2117,r13		! source line 2117
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_684
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_685
	.word	8
	.word	4
	.word	_Label_686
	.word	-12
	.word	4
	.word	_Label_687
	.word	-16
	.word	4
	.word	_Label_688
	.word	-20
	.word	4
	.word	_Label_689
	.word	-24
	.word	4
	.word	_Label_690
	.word	-28
	.word	4
	.word	_Label_691
	.word	-32
	.word	4
	.word	_Label_692
	.word	-36
	.word	4
	.word	_Label_693
	.word	-40
	.word	4
	.word	_Label_694
	.word	-44
	.word	4
	.word	_Label_695
	.word	-48
	.word	4
	.word	_Label_696
	.word	-72
	.word	24
	.word	_Label_697
	.word	-76
	.word	4
	.word	0
_Label_684:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_685:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
_Label_688:
	.byte	'?'
	.ascii	"_temp_681\0"
	.align
_Label_689:
	.byte	'?'
	.ascii	"_temp_680\0"
	.align
_Label_690:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_691:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_692:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_693:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_694:
	.byte	'?'
	.ascii	"_temp_673\0"
	.align
_Label_695:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_696:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_697:
	.byte	'I'
	.ascii	"i\0"
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
	mov	6,r1
_Label_3101:
	push	r0
	sub	r1,1,r1
	bne	_Label_3101
	mov	2122,r13		! source line 2122
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_698 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_698  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2135,r13		! source line 2135
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_699 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2137,r13		! source line 2137
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_700 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_700  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Call the function
	mov	2141,r13		! source line 2141
	mov	"\0\0CA",r10
	call	_P_System_printPtr
! CALL STATEMENT...
!   _temp_701 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_701  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2142,r13		! source line 2142
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2144,r13		! source line 2144
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_702
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_703
	.word	8
	.word	4
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
	.word	0
_Label_702:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_703:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_704:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_705:
	.byte	'I'
	.ascii	"sizeInBytes\0"
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
	.byte	'?'
	.ascii	"_temp_698\0"
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
	mov	6,r1
_Label_3102:
	push	r0
	sub	r1,1,r1
	bne	_Label_3102
	mov	2149,r13		! source line 2149
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_710 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_710  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2150,r13		! source line 2150
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_711 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_711  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2151,r13		! source line 2151
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_712 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_712  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=buffer  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Call the function
	mov	2152,r13		! source line 2152
	mov	"\0\0CA",r10
	call	_P_System_printPtr
! CALL STATEMENT...
!   _temp_713 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	2153,r13		! source line 2153
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2155,r13		! source line 2155
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_714
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_715
	.word	8
	.word	4
	.word	_Label_716
	.word	12
	.word	4
	.word	_Label_717
	.word	16
	.word	4
	.word	_Label_718
	.word	-12
	.word	4
	.word	_Label_719
	.word	-16
	.word	4
	.word	_Label_720
	.word	-20
	.word	4
	.word	_Label_721
	.word	-24
	.word	4
	.word	0
_Label_714:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_715:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_716:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_717:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_719:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_720:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_721:
	.byte	'?'
	.ascii	"_temp_710\0"
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
	mov	5,r1
_Label_3103:
	push	r0
	sub	r1,1,r1
	bne	_Label_3103
	mov	2160,r13		! source line 2160
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_722 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_722  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2161,r13		! source line 2161
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_723 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_723  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2162,r13		! source line 2162
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_724 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_724  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Call the function
	mov	2163,r13		! source line 2163
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2165,r13		! source line 2165
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_725
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_726
	.word	8
	.word	4
	.word	_Label_727
	.word	12
	.word	4
	.word	_Label_728
	.word	-12
	.word	4
	.word	_Label_729
	.word	-16
	.word	4
	.word	_Label_730
	.word	-20
	.word	4
	.word	0
_Label_725:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_726:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_727:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_724\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_723\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_722\0"
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
	mov	4,r1
_Label_3104:
	push	r0
	sub	r1,1,r1
	bne	_Label_3104
	mov	2170,r13		! source line 2170
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_731 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2171,r13		! source line 2171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_732 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_732  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	2172,r13		! source line 2172
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_733
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_734
	.word	8
	.word	4
	.word	_Label_735
	.word	-12
	.word	4
	.word	_Label_736
	.word	-16
	.word	4
	.word	0
_Label_733:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_734:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_736:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_212_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_212_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3105:
	push	r0
	sub	r1,1,r1
	bne	_Label_3105
	mov	2763,r13		! source line 2763
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_737 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_737  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0AS",r10
!   _temp_738 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_738) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_740 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_740) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_739 = *_temp_740  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_738 = _temp_739  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0AS",r10
!   _temp_741 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_741) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_743 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_743) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_742 = *_temp_743  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_741 = _temp_742  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0AS",r10
!   _temp_744 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_744) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_746 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_746) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_745 = *_temp_746  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_744 = _temp_745  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_212_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_747
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_748
	.word	8
	.word	4
	.word	_Label_749
	.word	12
	.word	4
	.word	_Label_750
	.word	-16
	.word	4
	.word	_Label_751
	.word	-9
	.word	1
	.word	_Label_752
	.word	-20
	.word	4
	.word	_Label_753
	.word	-24
	.word	4
	.word	_Label_754
	.word	-10
	.word	1
	.word	_Label_755
	.word	-28
	.word	4
	.word	_Label_756
	.word	-32
	.word	4
	.word	_Label_757
	.word	-11
	.word	1
	.word	_Label_758
	.word	-36
	.word	4
	.word	_Label_759
	.word	-12
	.word	1
	.word	_Label_760
	.word	-40
	.word	4
	.word	_Label_761
	.word	-44
	.word	4
	.word	0
_Label_747:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_748:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_749:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_751:
	.byte	'C'
	.ascii	"_temp_745\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_753:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_754:
	.byte	'C'
	.ascii	"_temp_742\0"
	.align
_Label_755:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_756:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_757:
	.byte	'C'
	.ascii	"_temp_739\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_759:
	.byte	'C'
	.ascii	"_temp_737\0"
	.align
_Label_760:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_761:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_211_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_printFCB,r1
	push	r1
	mov	3,r1
_Label_3106:
	push	r0
	sub	r1,1,r1
	bne	_Label_3106
	mov	2773,r13		! source line 2773
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_763 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_762 = *_temp_763  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_762  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2774,r13		! source line 2774
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2775,r13		! source line 2775
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2775,r13		! source line 2775
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_printFCB:
	.word	_sourceFileName
	.word	_Label_764
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_765
	.word	8
	.word	4
	.word	_Label_766
	.word	-12
	.word	4
	.word	_Label_767
	.word	-16
	.word	4
	.word	0
_Label_764:
	.ascii	"printFCB\0"
	.align
_Label_765:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_210_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_210_printOpen,r1
	push	r1
	mov	4,r1
_Label_3107:
	push	r0
	sub	r1,1,r1
	bne	_Label_3107
	mov	2778,r13		! source line 2778
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_768 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_768  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2779,r13		! source line 2779
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_769 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_769  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2780,r13		! source line 2780
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_770 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_770  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2781,r13		! source line 2781
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2782,r13		! source line 2782
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_210_printOpen:
	.word	_sourceFileName
	.word	_Label_771
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_772
	.word	8
	.word	4
	.word	_Label_773
	.word	-12
	.word	4
	.word	_Label_774
	.word	-16
	.word	4
	.word	_Label_775
	.word	-20
	.word	4
	.word	0
_Label_771:
	.ascii	"printOpen\0"
	.align
_Label_772:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_776
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_776:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_777
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_777:
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
_Label_3108:
	push	r0
	sub	r1,1,r1
	bne	_Label_3108
	mov	231,r13		! source line 231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_779		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_779
!	jmp	_Label_778
_Label_778:
! THEN...
	mov	233,r13		! source line 233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_780 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_780  sizeInBytes=4
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
_Label_779:
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
	.word	_Label_782
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_783
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_784
	.word	12
	.word	4
	.word	_Label_785
	.word	-12
	.word	4
	.word	_Label_786
	.word	-16
	.word	4
	.word	0
_Label_782:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_783:
	.ascii	"Pself\0"
	.align
_Label_784:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_780\0"
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
_Label_3109:
	push	r0
	sub	r1,1,r1
	bne	_Label_3109
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
!   if count != 2147483647 then goto _Label_788		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_788
!	jmp	_Label_787
_Label_787:
! THEN...
	mov	247,r13		! source line 247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_789 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_789  sizeInBytes=4
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
_Label_788:
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
!   if count > 0 then goto _Label_791		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_791
!	jmp	_Label_790
_Label_790:
! THEN...
	mov	251,r13		! source line 251
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
!   _temp_792 = &waitingThreads
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
!   _temp_793 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_793 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_794 = &_P_Kernel_readyList
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
_Label_791:
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
	.word	_Label_795
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_796
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_797
	.word	-12
	.word	4
	.word	_Label_798
	.word	-16
	.word	4
	.word	_Label_799
	.word	-20
	.word	4
	.word	_Label_800
	.word	-24
	.word	4
	.word	_Label_801
	.word	-28
	.word	4
	.word	_Label_802
	.word	-32
	.word	4
	.word	0
_Label_795:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_796:
	.ascii	"Pself\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_793\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_792\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_801:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_802:
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
_Label_3110:
	push	r0
	sub	r1,1,r1
	bne	_Label_3110
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
!   if count != -2147483648 then goto _Label_804		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_804
!	jmp	_Label_803
_Label_803:
! THEN...
	mov	265,r13		! source line 265
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_805 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_805  sizeInBytes=4
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
_Label_804:
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
!   if count >= 0 then goto _Label_807		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_807
!	jmp	_Label_806
_Label_806:
! THEN...
	mov	269,r13		! source line 269
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   _temp_808 = &waitingThreads
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
_Label_807:
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
	.word	_Label_809
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_810
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_811
	.word	-12
	.word	4
	.word	_Label_812
	.word	-16
	.word	4
	.word	_Label_813
	.word	-20
	.word	4
	.word	0
_Label_809:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_810:
	.ascii	"Pself\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_808\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
_Label_813:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_814
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_814:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_815
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_815:
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
_Label_3111:
	push	r0
	sub	r1,1,r1
	bne	_Label_3111
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
	.word	_Label_817
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_818
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_819
	.word	-12
	.word	4
	.word	0
_Label_817:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_818:
	.ascii	"Pself\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_816\0"
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
_Label_3112:
	push	r0
	sub	r1,1,r1
	bne	_Label_3112
	mov	301,r13		! source line 301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_821		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_821
!	jmp	_Label_820
_Label_820:
! THEN...
	mov	305,r13		! source line 305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_822 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_822  sizeInBytes=4
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
_Label_821:
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
!   if heldBy == 0 then goto _Label_826		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_826
!   _temp_825 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_827
_Label_826:
!   _temp_825 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_827:
!   if _temp_825 then goto _Label_824 else goto _Label_823
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_823
	jmp	_Label_824
_Label_823:
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
	jmp	_Label_828
_Label_824:
! ELSE...
	mov	311,r13		! source line 311
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   _temp_829 = &waitingThreads
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
_Label_828:
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
	.word	_Label_830
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_831
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_832
	.word	-16
	.word	4
	.word	_Label_833
	.word	-9
	.word	1
	.word	_Label_834
	.word	-20
	.word	4
	.word	_Label_835
	.word	-24
	.word	4
	.word	0
_Label_830:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_831:
	.ascii	"Pself\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_829\0"
	.align
_Label_833:
	.byte	'C'
	.ascii	"_temp_825\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_822\0"
	.align
_Label_835:
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
_Label_3113:
	push	r0
	sub	r1,1,r1
	bne	_Label_3113
	mov	319,r13		! source line 319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_837		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_837
!	jmp	_Label_836
_Label_836:
! THEN...
	mov	324,r13		! source line 324
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_838 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_838  sizeInBytes=4
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
_Label_837:
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
!   _temp_839 = &waitingThreads
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
!   if t == 0 then goto _Label_841		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_841
!	jmp	_Label_840
_Label_840:
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
!   _temp_842 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_842 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0SE",r10
!   _temp_843 = &_P_Kernel_readyList
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
	jmp	_Label_844
_Label_841:
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
_Label_844:
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
	.word	_Label_845
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_846
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_847
	.word	-12
	.word	4
	.word	_Label_848
	.word	-16
	.word	4
	.word	_Label_849
	.word	-20
	.word	4
	.word	_Label_850
	.word	-24
	.word	4
	.word	_Label_851
	.word	-28
	.word	4
	.word	_Label_852
	.word	-32
	.word	4
	.word	0
_Label_845:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_846:
	.ascii	"Pself\0"
	.align
_Label_847:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_848:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_839\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_838\0"
	.align
_Label_851:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_852:
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
_Label_3114:
	push	r0
	sub	r1,1,r1
	bne	_Label_3114
	mov	340,r13		! source line 340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_855		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_855
!	jmp	_Label_854
_Label_854:
!   _temp_853 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_856
_Label_855:
!   _temp_853 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_856:
!   ReturnResult: _temp_853  (sizeInBytes=1)
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
	.word	_Label_857
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_858
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_859
	.word	-9
	.word	1
	.word	0
_Label_857:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_858:
	.ascii	"Pself\0"
	.align
_Label_859:
	.byte	'C'
	.ascii	"_temp_853\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_860
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_860:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_861
	.word	_sourceFileName
	.word	153		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_861:
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
_Label_3115:
	push	r0
	sub	r1,1,r1
	bne	_Label_3115
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
	.word	_Label_863
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_864
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_865
	.word	-12
	.word	4
	.word	0
_Label_863:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_864:
	.ascii	"Pself\0"
	.align
_Label_865:
	.byte	'?'
	.ascii	"_temp_862\0"
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
_Label_3116:
	push	r0
	sub	r1,1,r1
	bne	_Label_3116
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
!   Retrieve Result: targetName=_temp_868  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_868 then goto _Label_867 else goto _Label_866
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_866
	jmp	_Label_867
_Label_866:
! THEN...
	mov	391,r13		! source line 391
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_869 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_869  sizeInBytes=4
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
_Label_867:
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
!   _temp_870 = &waitingThreads
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
	.word	_Label_871
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_872
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_873
	.word	12
	.word	4
	.word	_Label_874
	.word	-16
	.word	4
	.word	_Label_875
	.word	-20
	.word	4
	.word	_Label_876
	.word	-9
	.word	1
	.word	_Label_877
	.word	-24
	.word	4
	.word	0
_Label_871:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_872:
	.ascii	"Pself\0"
	.align
_Label_873:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_876:
	.byte	'C'
	.ascii	"_temp_868\0"
	.align
_Label_877:
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
_Label_3117:
	push	r0
	sub	r1,1,r1
	bne	_Label_3117
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
!   Retrieve Result: targetName=_temp_880  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_880 then goto _Label_879 else goto _Label_878
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_878
	jmp	_Label_879
_Label_878:
! THEN...
	mov	408,r13		! source line 408
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_881 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_881  sizeInBytes=4
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
_Label_879:
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
!   _temp_882 = &waitingThreads
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
!   if t == 0 then goto _Label_884		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_884
!	jmp	_Label_883
_Label_883:
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
!   _temp_885 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_885 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
!   _temp_886 = &_P_Kernel_readyList
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
_Label_884:
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
	.word	_Label_887
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_888
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_889
	.word	12
	.word	4
	.word	_Label_890
	.word	-16
	.word	4
	.word	_Label_891
	.word	-20
	.word	4
	.word	_Label_892
	.word	-24
	.word	4
	.word	_Label_893
	.word	-28
	.word	4
	.word	_Label_894
	.word	-9
	.word	1
	.word	_Label_895
	.word	-32
	.word	4
	.word	_Label_896
	.word	-36
	.word	4
	.word	0
_Label_887:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_888:
	.ascii	"Pself\0"
	.align
_Label_889:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_886\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_885\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_882\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_881\0"
	.align
_Label_894:
	.byte	'C'
	.ascii	"_temp_880\0"
	.align
_Label_895:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_896:
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
_Label_3118:
	push	r0
	sub	r1,1,r1
	bne	_Label_3118
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
!   Retrieve Result: targetName=_temp_899  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_899 then goto _Label_898 else goto _Label_897
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_897
	jmp	_Label_898
_Label_897:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_900 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_900  sizeInBytes=4
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
_Label_898:
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
_Label_901:
!	jmp	_Label_902
_Label_902:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_904 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_905
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_905
	jmp	_Label_906
_Label_905:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_903
! END IF...
_Label_906:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_907 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_907 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_908 = &_P_Kernel_readyList
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
	jmp	_Label_901
_Label_903:
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
	.word	_Label_909
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_910
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_911
	.word	12
	.word	4
	.word	_Label_912
	.word	-16
	.word	4
	.word	_Label_913
	.word	-20
	.word	4
	.word	_Label_914
	.word	-24
	.word	4
	.word	_Label_915
	.word	-28
	.word	4
	.word	_Label_916
	.word	-9
	.word	1
	.word	_Label_917
	.word	-32
	.word	4
	.word	_Label_918
	.word	-36
	.word	4
	.word	0
_Label_909:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_910:
	.ascii	"Pself\0"
	.align
_Label_911:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_912:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_913:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_904\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_916:
	.byte	'C'
	.ascii	"_temp_899\0"
	.align
_Label_917:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_918:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS ConditionHoare  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ConditionHoare:
	.word	_Label_919
	jmp	_Method_P_Kernel_ConditionHoare_1	! 4:	Init
	jmp	_Method_P_Kernel_ConditionHoare_2	! 8:	Wait
	jmp	_Method_P_Kernel_ConditionHoare_3	! 12:	Signal
	jmp	_Method_P_Kernel_ConditionHoare_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_919:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_920
	.word	_sourceFileName
	.word	166		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_ConditionHoare
	.word	_P_System_Object
	.word	0
_Label_920:
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
_Label_3119:
	push	r0
	sub	r1,1,r1
	bne	_Label_3119
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
	.word	_Label_922
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_923
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_924
	.word	-12
	.word	4
	.word	0
_Label_922:
	.ascii	"ConditionHoare"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_923:
	.ascii	"Pself\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_921\0"
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
_Label_3120:
	push	r0
	sub	r1,1,r1
	bne	_Label_3120
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
!   Retrieve Result: targetName=_temp_927  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_927 then goto _Label_926 else goto _Label_925
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_925
	jmp	_Label_926
_Label_925:
! THEN...
	mov	494,r13		! source line 494
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_928 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_928  sizeInBytes=4
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
_Label_926:
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
!   _temp_929 = &waitingThreads
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
!   Retrieve Result: targetName=_temp_932  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_932 then goto _Label_931 else goto _Label_930
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_930
	jmp	_Label_931
_Label_930:
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
_Label_931:
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
	.word	_Label_933
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_934
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_935
	.word	12
	.word	4
	.word	_Label_936
	.word	-9
	.word	1
	.word	_Label_937
	.word	-16
	.word	4
	.word	_Label_938
	.word	-20
	.word	4
	.word	_Label_939
	.word	-10
	.word	1
	.word	_Label_940
	.word	-24
	.word	4
	.word	0
_Label_933:
	.ascii	"ConditionHoare"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_934:
	.ascii	"Pself\0"
	.align
_Label_935:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_936:
	.byte	'C'
	.ascii	"_temp_932\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_939:
	.byte	'C'
	.ascii	"_temp_927\0"
	.align
_Label_940:
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
_Label_3121:
	push	r0
	sub	r1,1,r1
	bne	_Label_3121
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
!   Retrieve Result: targetName=_temp_943  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_943 then goto _Label_942 else goto _Label_941
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_941
	jmp	_Label_942
_Label_941:
! THEN...
	mov	517,r13		! source line 517
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_944 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_944  sizeInBytes=4
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
_Label_942:
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
!   _temp_945 = &waitingThreads
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
!   if t == 0 then goto _Label_947		(int)
	load	[r14+-40],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_947
!	jmp	_Label_946
_Label_946:
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
!   _temp_948 = t + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_948 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	524,r13		! source line 524
	mov	"\0\0SE",r10
!   _temp_949 = &_P_Kernel_readyList
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
!   _temp_950 = mutex + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_950 = t  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-16],r2
	store	r1,[r2]
! END IF...
_Label_947:
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
!   Retrieve Result: targetName=_temp_953  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_953 then goto _Label_952 else goto _Label_951
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_951
	jmp	_Label_952
_Label_951:
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
_Label_952:
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
	.word	_Label_954
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_955
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_956
	.word	12
	.word	4
	.word	_Label_957
	.word	-9
	.word	1
	.word	_Label_958
	.word	-16
	.word	4
	.word	_Label_959
	.word	-20
	.word	4
	.word	_Label_960
	.word	-24
	.word	4
	.word	_Label_961
	.word	-28
	.word	4
	.word	_Label_962
	.word	-32
	.word	4
	.word	_Label_963
	.word	-10
	.word	1
	.word	_Label_964
	.word	-36
	.word	4
	.word	_Label_965
	.word	-40
	.word	4
	.word	0
_Label_954:
	.ascii	"ConditionHoare"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_955:
	.ascii	"Pself\0"
	.align
_Label_956:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_957:
	.byte	'C'
	.ascii	"_temp_953\0"
	.align
_Label_958:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_949\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_945\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_944\0"
	.align
_Label_963:
	.byte	'C'
	.ascii	"_temp_943\0"
	.align
_Label_964:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_965:
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
_Label_3122:
	push	r0
	sub	r1,1,r1
	bne	_Label_3122
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
!   Retrieve Result: targetName=_temp_968  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_968 then goto _Label_967 else goto _Label_966
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_966
	jmp	_Label_967
_Label_966:
! THEN...
	mov	540,r13		! source line 540
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_969 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_969  sizeInBytes=4
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
_Label_967:
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
!   _temp_970 = &waitingThreads
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
!   if t == 0 then goto _Label_972		(int)
	load	[r14+-52],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_972
!	jmp	_Label_971
_Label_971:
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
!   _temp_973 = t + 76
	load	[r14+-52],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_973 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	550,r13		! source line 550
	mov	"\0\0SE",r10
!   _temp_974 = &_P_Kernel_readyList
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
!   _temp_975 = mutex + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_975 = t  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r14+-28],r2
	store	r1,[r2]
! END IF...
_Label_972:
! WHILE STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0WH",r10
_Label_976:
!	jmp	_Label_977
_Label_977:
	mov	555,r13		! source line 555
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0AS",r10
	mov	556,r13		! source line 556
	mov	"\0\0SE",r10
!   _temp_979 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_980
	load	[r14+-52],r1
	cmp	r1,r0
	be	_Label_980
	jmp	_Label_981
_Label_980:
! THEN...
	mov	558,r13		! source line 558
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0BR",r10
	jmp	_Label_978
! END IF...
_Label_981:
! ASSIGNMENT STATEMENT...
	mov	560,r13		! source line 560
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_982 = t + 76
	load	[r14+-52],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_982 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0SE",r10
!   _temp_983 = &_P_Kernel_readyList
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
	jmp	_Label_976
_Label_978:
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
!   Retrieve Result: targetName=_temp_986  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_986 then goto _Label_985 else goto _Label_984
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_984
	jmp	_Label_985
_Label_984:
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
_Label_985:
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
	.word	_Label_987
	.word	8		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_988
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_989
	.word	12
	.word	4
	.word	_Label_990
	.word	-9
	.word	1
	.word	_Label_991
	.word	-16
	.word	4
	.word	_Label_992
	.word	-20
	.word	4
	.word	_Label_993
	.word	-24
	.word	4
	.word	_Label_994
	.word	-28
	.word	4
	.word	_Label_995
	.word	-32
	.word	4
	.word	_Label_996
	.word	-36
	.word	4
	.word	_Label_997
	.word	-40
	.word	4
	.word	_Label_998
	.word	-44
	.word	4
	.word	_Label_999
	.word	-10
	.word	1
	.word	_Label_1000
	.word	-48
	.word	4
	.word	_Label_1001
	.word	-52
	.word	4
	.word	0
_Label_987:
	.ascii	"ConditionHoare"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_988:
	.ascii	"Pself\0"
	.align
_Label_989:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_990:
	.byte	'C'
	.ascii	"_temp_986\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_979\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_999:
	.byte	'C'
	.ascii	"_temp_968\0"
	.align
_Label_1000:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1001:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1002
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
_Label_1002:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1003
	.word	_sourceFileName
	.word	179		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1003:
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
_Label_3123:
	push	r0
	sub	r1,1,r1
	bne	_Label_3123
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
!   _temp_1004 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1004) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1004 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0AS",r10
!   _temp_1005 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1005 [0 ] into _temp_1006
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
!   Data Move: *_temp_1006 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0AS",r10
!   _temp_1007 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1007 [999 ] into _temp_1008
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
!   Data Move: *_temp_1008 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0AS",r10
!   _temp_1009 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1009 [999 ] into _temp_1010
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
!   stackTop = _temp_1010		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0AS",r10
!   _temp_1011 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1013 = &_temp_1012
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1013 = _temp_1013 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1015:
!   Data Move: *_temp_1013 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1013 = _temp_1013 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1014 = _temp_1014 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1014) then goto _Label_1015
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1015
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1016 = &_temp_1012
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3124
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3124:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1011 = *_temp_1016  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3125:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3125
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
!   _temp_1017 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1019 = &_temp_1018
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1019 = _temp_1019 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1021:
!   Data Move: *_temp_1019 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1019 = _temp_1019 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1020 = _temp_1020 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1020) then goto _Label_1021
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1021
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1022 = &_temp_1018
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3126
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3126:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1017 = *_temp_1022  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3127:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3127
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
	.word	_Label_1023
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1024
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1025
	.word	12
	.word	4
	.word	_Label_1026
	.word	-12
	.word	4
	.word	_Label_1027
	.word	-16
	.word	4
	.word	_Label_1028
	.word	-20
	.word	4
	.word	_Label_1029
	.word	-84
	.word	64
	.word	_Label_1030
	.word	-88
	.word	4
	.word	_Label_1031
	.word	-92
	.word	4
	.word	_Label_1032
	.word	-96
	.word	4
	.word	_Label_1033
	.word	-100
	.word	4
	.word	_Label_1034
	.word	-156
	.word	56
	.word	_Label_1035
	.word	-160
	.word	4
	.word	_Label_1036
	.word	-164
	.word	4
	.word	_Label_1037
	.word	-168
	.word	4
	.word	_Label_1038
	.word	-172
	.word	4
	.word	_Label_1039
	.word	-176
	.word	4
	.word	_Label_1040
	.word	-180
	.word	4
	.word	_Label_1041
	.word	-184
	.word	4
	.word	_Label_1042
	.word	-188
	.word	4
	.word	0
_Label_1023:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1024:
	.ascii	"Pself\0"
	.align
_Label_1025:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1009\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1008\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1007\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1006\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1005\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1004\0"
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
_Label_3128:
	push	r0
	sub	r1,1,r1
	bne	_Label_3128
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
!   _temp_1043 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1043  (sizeInBytes=4)
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
!   _temp_1045 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1044  sizeInBytes=4
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
	.word	_Label_1046
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1047
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1048
	.word	12
	.word	4
	.word	_Label_1049
	.word	16
	.word	4
	.word	_Label_1050
	.word	-12
	.word	4
	.word	_Label_1051
	.word	-16
	.word	4
	.word	_Label_1052
	.word	-20
	.word	4
	.word	_Label_1053
	.word	-24
	.word	4
	.word	_Label_1054
	.word	-28
	.word	4
	.word	0
_Label_1046:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1047:
	.ascii	"Pself\0"
	.align
_Label_1048:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1049:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1053:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1054:
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
_Label_3129:
	push	r0
	sub	r1,1,r1
	bne	_Label_3129
	mov	623,r13		! source line 623
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	639,r13		! source line 639
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1057 == _P_Kernel_currentThread then goto _Label_1056		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1056
!	jmp	_Label_1055
_Label_1055:
! THEN...
	mov	640,r13		! source line 640
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1058 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1058  sizeInBytes=4
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
_Label_1056:
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
!   _temp_1059 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1061		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1061
!	jmp	_Label_1060
_Label_1060:
! THEN...
	mov	651,r13		! source line 651
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1063		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1063
!	jmp	_Label_1062
_Label_1062:
! THEN...
	mov	652,r13		! source line 652
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1064 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1064  sizeInBytes=4
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
_Label_1063:
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
!   _temp_1066 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1065  sizeInBytes=4
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
_Label_1061:
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
	.word	_Label_1067
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1068
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1069
	.word	-12
	.word	4
	.word	_Label_1070
	.word	-16
	.word	4
	.word	_Label_1071
	.word	-20
	.word	4
	.word	_Label_1072
	.word	-24
	.word	4
	.word	_Label_1073
	.word	-28
	.word	4
	.word	_Label_1074
	.word	-32
	.word	4
	.word	_Label_1075
	.word	-36
	.word	4
	.word	_Label_1076
	.word	-40
	.word	4
	.word	_Label_1077
	.word	-44
	.word	4
	.word	0
_Label_1067:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1068:
	.ascii	"Pself\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1075:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1076:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1077:
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
_Label_3130:
	push	r0
	sub	r1,1,r1
	bne	_Label_3130
	mov	663,r13		! source line 663
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	675,r13		! source line 675
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1079		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1079
!	jmp	_Label_1078
_Label_1078:
! THEN...
	mov	676,r13		! source line 676
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1080 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1080  sizeInBytes=4
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
_Label_1079:
! IF STATEMENT...
	mov	679,r13		! source line 679
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1083 == _P_Kernel_currentThread then goto _Label_1082		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1082
!	jmp	_Label_1081
_Label_1081:
! THEN...
	mov	680,r13		! source line 680
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1084 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1084  sizeInBytes=4
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
_Label_1082:
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
!   _temp_1085 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1086
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1086
	jmp	_Label_1087
_Label_1086:
! THEN...
	mov	688,r13		! source line 688
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1088 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1088  sizeInBytes=4
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
_Label_1087:
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
	.word	_Label_1089
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1090
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1091
	.word	-12
	.word	4
	.word	_Label_1092
	.word	-16
	.word	4
	.word	_Label_1093
	.word	-20
	.word	4
	.word	_Label_1094
	.word	-24
	.word	4
	.word	_Label_1095
	.word	-28
	.word	4
	.word	_Label_1096
	.word	-32
	.word	4
	.word	0
_Label_1089:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1090:
	.ascii	"Pself\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1096:
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
_Label_3131:
	push	r0
	sub	r1,1,r1
	bne	_Label_3131
	mov	695,r13		! source line 695
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0IF",r10
!   _temp_1100 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1100 [0 ] into _temp_1101
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
!   Data Move: _temp_1099 = *_temp_1101  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1099 == 606348324 then goto _Label_1098		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1098
!	jmp	_Label_1097
_Label_1097:
! THEN...
	mov	702,r13		! source line 702
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1102 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1102  sizeInBytes=4
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
	jmp	_Label_1103
_Label_1098:
! ELSE...
	mov	703,r13		! source line 703
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0IF",r10
!   _temp_1107 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1107 [999 ] into _temp_1108
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
!   Data Move: _temp_1106 = *_temp_1108  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1106 == 606348324 then goto _Label_1105		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1105
!	jmp	_Label_1104
_Label_1104:
! THEN...
	mov	704,r13		! source line 704
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1109 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1109  sizeInBytes=4
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
_Label_1105:
! END IF...
_Label_1103:
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
	.word	_Label_1110
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1111
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1112
	.word	-12
	.word	4
	.word	_Label_1113
	.word	-16
	.word	4
	.word	_Label_1114
	.word	-20
	.word	4
	.word	_Label_1115
	.word	-24
	.word	4
	.word	_Label_1116
	.word	-28
	.word	4
	.word	_Label_1117
	.word	-32
	.word	4
	.word	_Label_1118
	.word	-36
	.word	4
	.word	_Label_1119
	.word	-40
	.word	4
	.word	0
_Label_1110:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1111:
	.ascii	"Pself\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1099\0"
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
_Label_3132:
	push	r0
	sub	r1,1,r1
	bne	_Label_3132
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
!   _temp_1120 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1120  sizeInBytes=4
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
!   _temp_1121 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1121  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1122  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	720,r13		! source line 720
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1123 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1123  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1124 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1124  sizeInBytes=4
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
!   _temp_1129 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1130 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1129  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1125:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1130 then goto _Label_1128		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1128
_Label_1126:
	mov	723,r13		! source line 723
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1131 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1131  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	724,r13		! source line 724
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1132 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1132  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1133 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1133  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1135 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1135 [i ] into _temp_1136
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
!   Data Move: _temp_1134 = *_temp_1136  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1134  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1137 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1137  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1139 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1139 [i ] into _temp_1140
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
!   Data Move: _temp_1138 = *_temp_1140  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1138  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1141 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1141  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1127:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1125
! END FOR
_Label_1128:
! CALL STATEMENT...
!   _temp_1142 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-116]
!   _temp_1143 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1142  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1143  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	732,r13		! source line 732
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1144 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-108]
!   _temp_1146 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1146 [0 ] into _temp_1147
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
!   _temp_1145 = _temp_1147		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1144  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1145  sizeInBytes=4
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
	be	_Label_1150
	cmp	r1,2
	be	_Label_1151
	cmp	r1,3
	be	_Label_1152
	cmp	r1,4
	be	_Label_1153
	cmp	r1,5
	be	_Label_1154
	jmp	_Label_1148
! CASE 1...
_Label_1150:
! CALL STATEMENT...
!   _temp_1155 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1155  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0BR",r10
	jmp	_Label_1149
! CASE 2...
_Label_1151:
! CALL STATEMENT...
!   _temp_1156 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1156  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	740,r13		! source line 740
	mov	"\0\0BR",r10
	jmp	_Label_1149
! CASE 3...
_Label_1152:
! CALL STATEMENT...
!   _temp_1157 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1157  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	743,r13		! source line 743
	mov	"\0\0BR",r10
	jmp	_Label_1149
! CASE 4...
_Label_1153:
! CALL STATEMENT...
!   _temp_1158 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1158  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	745,r13		! source line 745
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0BR",r10
	jmp	_Label_1149
! CASE 5...
_Label_1154:
! CALL STATEMENT...
!   _temp_1159 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1159  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	748,r13		! source line 748
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	749,r13		! source line 749
	mov	"\0\0BR",r10
	jmp	_Label_1149
! DEFAULT CASE...
_Label_1148:
! CALL STATEMENT...
!   _temp_1160 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1160  sizeInBytes=4
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
_Label_1149:
! CALL STATEMENT...
!   _temp_1161 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1161  sizeInBytes=4
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
!   _temp_1162 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1162  sizeInBytes=4
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
!   _temp_1167 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1168 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1167  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1163:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1168 then goto _Label_1166		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1166
_Label_1164:
	mov	757,r13		! source line 757
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1169 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1169  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	758,r13		! source line 758
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1170 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1170  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	759,r13		! source line 759
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1171 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1171  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1173 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1173 [i ] into _temp_1174
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
!   Data Move: _temp_1172 = *_temp_1174  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1172  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	761,r13		! source line 761
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1175 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1175  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	762,r13		! source line 762
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1177 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1177 [i ] into _temp_1178
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
!   Data Move: _temp_1176 = *_temp_1178  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1176  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	763,r13		! source line 763
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1179 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1179  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	764,r13		! source line 764
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1165:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1163
! END FOR
_Label_1166:
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
	.word	_Label_1180
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1181
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1182
	.word	-12
	.word	4
	.word	_Label_1183
	.word	-16
	.word	4
	.word	_Label_1184
	.word	-20
	.word	4
	.word	_Label_1185
	.word	-24
	.word	4
	.word	_Label_1186
	.word	-28
	.word	4
	.word	_Label_1187
	.word	-32
	.word	4
	.word	_Label_1188
	.word	-36
	.word	4
	.word	_Label_1189
	.word	-40
	.word	4
	.word	_Label_1190
	.word	-44
	.word	4
	.word	_Label_1191
	.word	-48
	.word	4
	.word	_Label_1192
	.word	-52
	.word	4
	.word	_Label_1193
	.word	-56
	.word	4
	.word	_Label_1194
	.word	-60
	.word	4
	.word	_Label_1195
	.word	-64
	.word	4
	.word	_Label_1196
	.word	-68
	.word	4
	.word	_Label_1197
	.word	-72
	.word	4
	.word	_Label_1198
	.word	-76
	.word	4
	.word	_Label_1199
	.word	-80
	.word	4
	.word	_Label_1200
	.word	-84
	.word	4
	.word	_Label_1201
	.word	-88
	.word	4
	.word	_Label_1202
	.word	-92
	.word	4
	.word	_Label_1203
	.word	-96
	.word	4
	.word	_Label_1204
	.word	-100
	.word	4
	.word	_Label_1205
	.word	-104
	.word	4
	.word	_Label_1206
	.word	-108
	.word	4
	.word	_Label_1207
	.word	-112
	.word	4
	.word	_Label_1208
	.word	-116
	.word	4
	.word	_Label_1209
	.word	-120
	.word	4
	.word	_Label_1210
	.word	-124
	.word	4
	.word	_Label_1211
	.word	-128
	.word	4
	.word	_Label_1212
	.word	-132
	.word	4
	.word	_Label_1213
	.word	-136
	.word	4
	.word	_Label_1214
	.word	-140
	.word	4
	.word	_Label_1215
	.word	-144
	.word	4
	.word	_Label_1216
	.word	-148
	.word	4
	.word	_Label_1217
	.word	-152
	.word	4
	.word	_Label_1218
	.word	-156
	.word	4
	.word	_Label_1219
	.word	-160
	.word	4
	.word	_Label_1220
	.word	-164
	.word	4
	.word	_Label_1221
	.word	-168
	.word	4
	.word	_Label_1222
	.word	-172
	.word	4
	.word	_Label_1223
	.word	-176
	.word	4
	.word	_Label_1224
	.word	-180
	.word	4
	.word	_Label_1225
	.word	-184
	.word	4
	.word	_Label_1226
	.word	-188
	.word	4
	.word	_Label_1227
	.word	-192
	.word	4
	.word	_Label_1228
	.word	-196
	.word	4
	.word	0
_Label_1180:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1181:
	.ascii	"Pself\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1173\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1172\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1157\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1156\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1155\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1124\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1123\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1122\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1121\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1227:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1228:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1229
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1229:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1230
	.word	_sourceFileName
	.word	206		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1230:
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
_Label_3133:
	push	r0
	sub	r1,1,r1
	bne	_Label_3133
	mov	820,r13		! source line 820
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1231 = _StringConst_108
	set	_StringConst_108,r1
	set	-50084,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1231  sizeInBytes=4
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
!   _temp_1233 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-50076,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1235 = &_temp_1234
	set	-50072,r1
	add	r14,r1,r1
	store	r1,[r14+-8428]
!   _temp_1235 = _temp_1235 + 4
	load	[r14+-8428],r1
	add	r1,4,r1
	store	r1,[r14+-8428]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1237 = zeros  (sizeInBytes=4164)
	add	r14,-8420,r4
	mov	1041,r3
_Label_3134:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3134
!   _temp_1237 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-8420]
	mov	10,r1
	store	r1,[r14+-8424]
_Label_1239:
!   Data Move: *_temp_1235 = _temp_1237  (sizeInBytes=4164)
	add	r14,-8420,r5
	load	[r14+-8428],r4
	mov	1041,r3
_Label_3135:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3135
!   _temp_1235 = _temp_1235 + 4164
	load	[r14+-8428],r1
	add	r1,4164,r1
	store	r1,[r14+-8428]
!   _temp_1236 = _temp_1236 + -1
	load	[r14+-8424],r1
	add	r1,-1,r1
	store	r1,[r14+-8424]
!   if intNotZero (_temp_1236) then goto _Label_1239
	load	[r14+-8424],r1
	cmp	r1,r0
	bne	_Label_1239
!   Initialize the array size...
	mov	10,r1
	set	-50072,r2
	store	r1,[r14+r2]
!   _temp_1240 = &_temp_1234
	set	-50072,r1
	add	r14,r1,r1
	store	r1,[r14+-4252]
!   make sure array has size 10
	set	-50076,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3136
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3136:
!   make sure array has size 10
	load	[r14+-4252],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1233 = *_temp_1240  (sizeInBytes=41644)
	load	[r14+-4252],r5
	set	-50076,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3137:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3137
! FOR STATEMENT...
	mov	841,r13		! source line 841
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1245 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-4248]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1246 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-4244]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1245  (sizeInBytes=4)
	load	[r14+-4248],r1
	set	-50088,r2
	store	r1,[r14+r2]
_Label_1241:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1246 then goto _Label_1244		
	set	-50088,r1
	load	[r14+r1],r1
	load	[r14+-4244],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1244
_Label_1242:
	mov	841,r13		! source line 841
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0AS",r10
!   _temp_1247 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-4240]
!   Move address of _temp_1247 [i ] into _temp_1248
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
!   ZeroMemory: _temp_1249 = zeros  (sizeInBytes=4164)
	add	r14,-4232,r4
	mov	1041,r3
_Label_3138:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3138
!   _temp_1249 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4232]
!   Data Move: *_temp_1248 = _temp_1249  (sizeInBytes=4164)
	add	r14,-4232,r5
	load	[r14+-4236],r4
	mov	1041,r3
_Label_3139:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3139
! SEND STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0SE",r10
!   _temp_1251 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-64]
!   _temp_1252 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_1252 [i ] into _temp_1253
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
!   Prepare Argument: offset=12  value=_temp_1251  sizeInBytes=4
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
!   _temp_1254 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1254 [i ] into _temp_1255
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
!   _temp_1256 = _temp_1255 + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1256 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	845,r13		! source line 845
	mov	"\0\0SE",r10
!   _temp_1258 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1258 [i ] into _temp_1259
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
!   _temp_1257 = _temp_1259		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_1260 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1257  sizeInBytes=4
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
_Label_1243:
!   i = i + 1
	set	-50088,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-50088,r2
	store	r1,[r14+r2]
	jmp	_Label_1241
! END FOR
_Label_1244:
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
!   _temp_1263 = &threadManagerLock
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
!   _temp_1264 = &aThreadBecameFree
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
	.word	_Label_1265
	.word	4		! total size of parameters
	.word	50088		! frame size = 50088
	.word	_Label_1266
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1267
	.word	-12
	.word	4
	.word	_Label_1268
	.word	-16
	.word	4
	.word	_Label_1269
	.word	-20
	.word	4
	.word	_Label_1270
	.word	-24
	.word	4
	.word	_Label_1271
	.word	-28
	.word	4
	.word	_Label_1272
	.word	-32
	.word	4
	.word	_Label_1273
	.word	-36
	.word	4
	.word	_Label_1274
	.word	-40
	.word	4
	.word	_Label_1275
	.word	-44
	.word	4
	.word	_Label_1276
	.word	-48
	.word	4
	.word	_Label_1277
	.word	-52
	.word	4
	.word	_Label_1278
	.word	-56
	.word	4
	.word	_Label_1279
	.word	-60
	.word	4
	.word	_Label_1280
	.word	-64
	.word	4
	.word	_Label_1281
	.word	-68
	.word	4
	.word	_Label_1282
	.word	-4232
	.word	4164
	.word	_Label_1283
	.word	-4236
	.word	4
	.word	_Label_1284
	.word	-4240
	.word	4
	.word	_Label_1285
	.word	-4244
	.word	4
	.word	_Label_1286
	.word	-4248
	.word	4
	.word	_Label_1287
	.word	-4252
	.word	4
	.word	_Label_1288
	.word	-4256
	.word	4
	.word	_Label_1289
	.word	-8420
	.word	4164
	.word	_Label_1290
	.word	-8424
	.word	4
	.word	_Label_1291
	.word	-8428
	.word	4
	.word	_Label_1292
	.word	-50072
	.word	41644
	.word	_Label_1293
	.word	-50076
	.word	4
	.word	_Label_1294
	.word	-50080
	.word	4
	.word	_Label_1295
	.word	-50084
	.word	4
	.word	_Label_1296
	.word	-50088
	.word	4
	.word	0
_Label_1265:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1266:
	.ascii	"Pself\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1276:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1249\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1248\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1245\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1232\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1231\0"
	.align
_Label_1296:
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
_Label_3140:
	push	r0
	sub	r1,1,r1
	bne	_Label_3140
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
!   _temp_1297 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
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
!   _temp_1302 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1303 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1302  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1298:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1303 then goto _Label_1301		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1301
_Label_1299:
	mov	865,r13		! source line 865
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1304 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1304  sizeInBytes=4
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
!   _temp_1305 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	868,r13		! source line 868
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1307 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1307 [i ] into _temp_1308
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
!   _temp_1306 = _temp_1308		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1306  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	869,r13		! source line 869
	mov	"\0\0CA",r10
	call	_function_215_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1300:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1298
! END FOR
_Label_1301:
! CALL STATEMENT...
!   _temp_1309 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1309  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	871,r13		! source line 871
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	872,r13		! source line 872
	mov	"\0\0SE",r10
!   _temp_1310 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1311 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1310  sizeInBytes=4
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
	.word	_Label_1312
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1313
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1314
	.word	-12
	.word	4
	.word	_Label_1315
	.word	-16
	.word	4
	.word	_Label_1316
	.word	-20
	.word	4
	.word	_Label_1317
	.word	-24
	.word	4
	.word	_Label_1318
	.word	-28
	.word	4
	.word	_Label_1319
	.word	-32
	.word	4
	.word	_Label_1320
	.word	-36
	.word	4
	.word	_Label_1321
	.word	-40
	.word	4
	.word	_Label_1322
	.word	-44
	.word	4
	.word	_Label_1323
	.word	-48
	.word	4
	.word	_Label_1324
	.word	-52
	.word	4
	.word	_Label_1325
	.word	-56
	.word	4
	.word	_Label_1326
	.word	-60
	.word	4
	.word	0
_Label_1312:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1313:
	.ascii	"Pself\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1310\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1309\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1308\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1307\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1320:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1321:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1322:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1323:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1324:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1325:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1326:
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
_Label_3141:
	push	r0
	sub	r1,1,r1
	bne	_Label_3141
	mov	879,r13		! source line 879
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0SE",r10
!   _temp_1327 = &threadManagerLock
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
_Label_1328:
	mov	892,r13		! source line 892
	mov	"\0\0SE",r10
!   _temp_1331 = &freeList
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
!   if result==true then goto _Label_1329 else goto _Label_1330
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1330
	jmp	_Label_1329
_Label_1329:
	mov	892,r13		! source line 892
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0SE",r10
!   _temp_1332 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1333 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1332  sizeInBytes=4
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
	jmp	_Label_1328
_Label_1330:
! ASSIGNMENT STATEMENT...
	mov	898,r13		! source line 898
	mov	"\0\0AS",r10
	mov	898,r13		! source line 898
	mov	"\0\0SE",r10
!   _temp_1334 = &freeList
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
!   _temp_1335 = t + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1335 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	900,r13		! source line 900
	mov	"\0\0SE",r10
!   _temp_1336 = &threadManagerLock
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
	.word	_Label_1337
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1338
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1339
	.word	-12
	.word	4
	.word	_Label_1340
	.word	-16
	.word	4
	.word	_Label_1341
	.word	-20
	.word	4
	.word	_Label_1342
	.word	-24
	.word	4
	.word	_Label_1343
	.word	-28
	.word	4
	.word	_Label_1344
	.word	-32
	.word	4
	.word	_Label_1345
	.word	-36
	.word	4
	.word	_Label_1346
	.word	-40
	.word	4
	.word	0
_Label_1337:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1338:
	.ascii	"Pself\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1341:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1342:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1343:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1344:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1345:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1346:
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
_Label_3142:
	push	r0
	sub	r1,1,r1
	bne	_Label_3142
	mov	906,r13		! source line 906
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	916,r13		! source line 916
	mov	"\0\0SE",r10
!   _temp_1347 = &threadManagerLock
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
!   _temp_1348 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1348 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0SE",r10
!   _temp_1349 = &freeList
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
!   _temp_1350 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1351 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_1352 = &threadManagerLock
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
	.word	_Label_1353
	.word	8		! total size of parameters
	.word	32		! frame size = 32
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
	.word	0
_Label_1353:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1354:
	.ascii	"Pself\0"
	.align
_Label_1355:
	.byte	'P'
	.ascii	"th\0"
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
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1362
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1362:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1363
	.word	_sourceFileName
	.word	227		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1363:
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
_Label_3143:
	push	r0
	sub	r1,1,r1
	bne	_Label_3143
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
_Label_3144:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3144
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	938,r13		! source line 938
	mov	"\0\0SE",r10
!   _temp_1365 = &addrSpace
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
	.word	_Label_1366
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1367
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1368
	.word	-12
	.word	4
	.word	_Label_1369
	.word	-16
	.word	4
	.word	0
_Label_1366:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1367:
	.ascii	"Pself\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1364\0"
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
_Label_3145:
	push	r0
	sub	r1,1,r1
	bne	_Label_3145
	mov	948,r13		! source line 948
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1370) then goto _runtimeErrorNullPointer
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
!   _temp_1371 = &addrSpace
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
!   _temp_1372 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1372  sizeInBytes=4
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
	call	_function_215_ThreadPrintShort
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
	.word	_Label_1373
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1374
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1375
	.word	-12
	.word	4
	.word	_Label_1376
	.word	-16
	.word	4
	.word	_Label_1377
	.word	-20
	.word	4
	.word	0
_Label_1373:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1374:
	.ascii	"Pself\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1372\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1371\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1370\0"
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
_Label_3146:
	push	r0
	sub	r1,1,r1
	bne	_Label_3146
	mov	971,r13		! source line 971
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1378 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1378  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	975,r13		! source line 975
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1379  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	976,r13		! source line 976
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1380 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1380  sizeInBytes=4
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
!   _temp_1381 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1381  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	979,r13		! source line 979
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1383		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1383
!	jmp	_Label_1382
_Label_1382:
! THEN...
	mov	981,r13		! source line 981
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1384 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1384  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	981,r13		! source line 981
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1385
_Label_1383:
! ELSE...
	mov	982,r13		! source line 982
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1387		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1387
!	jmp	_Label_1386
_Label_1386:
! THEN...
	mov	983,r13		! source line 983
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1388 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1388  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	983,r13		! source line 983
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1389
_Label_1387:
! ELSE...
	mov	984,r13		! source line 984
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1391		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1391
!	jmp	_Label_1390
_Label_1390:
! THEN...
	mov	985,r13		! source line 985
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1392 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1392  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	985,r13		! source line 985
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1393
_Label_1391:
! ELSE...
	mov	987,r13		! source line 987
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1394 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1394  sizeInBytes=4
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
_Label_1393:
! END IF...
_Label_1389:
! END IF...
_Label_1385:
! CALL STATEMENT...
!   _temp_1395 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1395  sizeInBytes=4
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
!   _temp_1396 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1396  sizeInBytes=4
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
	.word	_Label_1397
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1398
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1399
	.word	-12
	.word	4
	.word	_Label_1400
	.word	-16
	.word	4
	.word	_Label_1401
	.word	-20
	.word	4
	.word	_Label_1402
	.word	-24
	.word	4
	.word	_Label_1403
	.word	-28
	.word	4
	.word	_Label_1404
	.word	-32
	.word	4
	.word	_Label_1405
	.word	-36
	.word	4
	.word	_Label_1406
	.word	-40
	.word	4
	.word	_Label_1407
	.word	-44
	.word	4
	.word	_Label_1408
	.word	-48
	.word	4
	.word	0
_Label_1397:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1398:
	.ascii	"Pself\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1396\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1395\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1394\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1392\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1409
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1409:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1410
	.word	_sourceFileName
	.word	247		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1410:
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
_Label_3147:
	push	r0
	sub	r1,1,r1
	bne	_Label_3147
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
!   _temp_1414 = &processManagerLock
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
!   _temp_1415 = &aProcessBecameFree
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
!   _temp_1416 = &aProcessDied
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
!   _temp_1418 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1564]
!   NEW ARRAY Constructor...
!   _temp_1420 = &_temp_1419
	add	r14,-1560,r1
	store	r1,[r14+-316]
!   _temp_1420 = _temp_1420 + 4
	load	[r14+-316],r1
	add	r1,4,r1
	store	r1,[r14+-316]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1422 = zeros  (sizeInBytes=124)
	add	r14,-308,r4
	mov	31,r3
_Label_3148:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3148
!   _temp_1422 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-308]
	mov	10,r1
	store	r1,[r14+-312]
_Label_1424:
!   Data Move: *_temp_1420 = _temp_1422  (sizeInBytes=124)
	add	r14,-308,r5
	load	[r14+-316],r4
	mov	31,r3
_Label_3149:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3149
!   _temp_1420 = _temp_1420 + 124
	load	[r14+-316],r1
	add	r1,124,r1
	store	r1,[r14+-316]
!   _temp_1421 = _temp_1421 + -1
	load	[r14+-312],r1
	add	r1,-1,r1
	store	r1,[r14+-312]
!   if intNotZero (_temp_1421) then goto _Label_1424
	load	[r14+-312],r1
	cmp	r1,r0
	bne	_Label_1424
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1560]
!   _temp_1425 = &_temp_1419
	add	r14,-1560,r1
	store	r1,[r14+-180]
!   make sure array has size 10
	load	[r14+-1564],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3150
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3150:
!   make sure array has size 10
	load	[r14+-180],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1418 = *_temp_1425  (sizeInBytes=1244)
	load	[r14+-180],r5
	load	[r14+-1564],r4
	mov	311,r3
_Label_3151:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3151
! FOR STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1430 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-176]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1431 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-172]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1430  (sizeInBytes=4)
	load	[r14+-176],r1
	store	r1,[r14+-1596]
_Label_1426:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1431 then goto _Label_1429		
	load	[r14+-1596],r1
	load	[r14+-172],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1429
_Label_1427:
	mov	1028,r13		! source line 1028
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1029,r13		! source line 1029
	mov	"\0\0AS",r10
!   _temp_1432 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-168]
!   Move address of _temp_1432 [i ] into _temp_1433
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
!   ZeroMemory: _temp_1434 = zeros  (sizeInBytes=124)
	add	r14,-160,r4
	mov	31,r3
_Label_3152:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3152
!   _temp_1434 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-160]
!   Data Move: *_temp_1433 = _temp_1434  (sizeInBytes=124)
	add	r14,-160,r5
	load	[r14+-164],r4
	mov	31,r3
_Label_3153:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3153
! SEND STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_1436 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Move address of _temp_1436 [i ] into _temp_1437
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
!   _temp_1439 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1439 [i ] into _temp_1440
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
!   _temp_1438 = _temp_1440		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1441 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1438  sizeInBytes=4
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
_Label_1428:
!   i = i + 1
	load	[r14+-1596],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1596]
	jmp	_Label_1426
! END FOR
_Label_1429:
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
	.word	_Label_1442
	.word	4		! total size of parameters
	.word	1596		! frame size = 1596
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
	.word	-160
	.word	124
	.word	_Label_1452
	.word	-164
	.word	4
	.word	_Label_1453
	.word	-168
	.word	4
	.word	_Label_1454
	.word	-172
	.word	4
	.word	_Label_1455
	.word	-176
	.word	4
	.word	_Label_1456
	.word	-180
	.word	4
	.word	_Label_1457
	.word	-184
	.word	4
	.word	_Label_1458
	.word	-308
	.word	124
	.word	_Label_1459
	.word	-312
	.word	4
	.word	_Label_1460
	.word	-316
	.word	4
	.word	_Label_1461
	.word	-1560
	.word	1244
	.word	_Label_1462
	.word	-1564
	.word	4
	.word	_Label_1463
	.word	-1568
	.word	4
	.word	_Label_1464
	.word	-1572
	.word	4
	.word	_Label_1465
	.word	-1576
	.word	4
	.word	_Label_1466
	.word	-1580
	.word	4
	.word	_Label_1467
	.word	-1584
	.word	4
	.word	_Label_1468
	.word	-1588
	.word	4
	.word	_Label_1469
	.word	-1592
	.word	4
	.word	_Label_1470
	.word	-1596
	.word	4
	.word	0
_Label_1442:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
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
	.ascii	"_temp_1440\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1439\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1423\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1422\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1421\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1470:
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
_Label_3154:
	push	r0
	sub	r1,1,r1
	bne	_Label_3154
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
!   _temp_1471 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1471  sizeInBytes=4
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
!   _temp_1476 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1477 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1476  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1472:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1477 then goto _Label_1475		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1475
_Label_1473:
	mov	1047,r13		! source line 1047
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1478 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1478  sizeInBytes=4
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
!   _temp_1479 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1479  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1050,r13		! source line 1050
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0SE",r10
!   _temp_1480 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1480 [i ] into _temp_1481
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
_Label_1474:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1472
! END FOR
_Label_1475:
! CALL STATEMENT...
!   _temp_1482 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1482  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1053,r13		! source line 1053
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1054,r13		! source line 1054
	mov	"\0\0SE",r10
!   _temp_1483 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1484 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1483  sizeInBytes=4
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
	.word	_Label_1485
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1486
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1487
	.word	-12
	.word	4
	.word	_Label_1488
	.word	-16
	.word	4
	.word	_Label_1489
	.word	-20
	.word	4
	.word	_Label_1490
	.word	-24
	.word	4
	.word	_Label_1491
	.word	-28
	.word	4
	.word	_Label_1492
	.word	-32
	.word	4
	.word	_Label_1493
	.word	-36
	.word	4
	.word	_Label_1494
	.word	-40
	.word	4
	.word	_Label_1495
	.word	-44
	.word	4
	.word	_Label_1496
	.word	-48
	.word	4
	.word	_Label_1497
	.word	-52
	.word	4
	.word	_Label_1498
	.word	-56
	.word	4
	.word	0
_Label_1485:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1486:
	.ascii	"Pself\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1484\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1497:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1498:
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
_Label_3155:
	push	r0
	sub	r1,1,r1
	bne	_Label_3155
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
!   _temp_1499 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1499  sizeInBytes=4
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
!   _temp_1504 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1505 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1504  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1500:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1505 then goto _Label_1503		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1503
_Label_1501:
	mov	1070,r13		! source line 1070
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1506 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1506  sizeInBytes=4
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
!   _temp_1507 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1507 [i ] into _temp_1508
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
_Label_1502:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1500
! END FOR
_Label_1503:
! CALL STATEMENT...
!   _temp_1509 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1509  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1075,r13		! source line 1075
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1076,r13		! source line 1076
	mov	"\0\0SE",r10
!   _temp_1510 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1511 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1510  sizeInBytes=4
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
	.word	_Label_1512
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1513
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1514
	.word	-12
	.word	4
	.word	_Label_1515
	.word	-16
	.word	4
	.word	_Label_1516
	.word	-20
	.word	4
	.word	_Label_1517
	.word	-24
	.word	4
	.word	_Label_1518
	.word	-28
	.word	4
	.word	_Label_1519
	.word	-32
	.word	4
	.word	_Label_1520
	.word	-36
	.word	4
	.word	_Label_1521
	.word	-40
	.word	4
	.word	_Label_1522
	.word	-44
	.word	4
	.word	_Label_1523
	.word	-48
	.word	4
	.word	_Label_1524
	.word	-52
	.word	4
	.word	0
_Label_1512:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1513:
	.ascii	"Pself\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1511\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1520:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
_Label_1521:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1522:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1523:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1524:
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
_Label_3156:
	push	r0
	sub	r1,1,r1
	bne	_Label_3156
	mov	1083,r13		! source line 1083
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1090,r13		! source line 1090
	mov	"\0\0SE",r10
!   _temp_1525 = &processManagerLock
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
_Label_1526:
	mov	1094,r13		! source line 1094
	mov	"\0\0SE",r10
!   _temp_1529 = &freeList
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
!   if result==true then goto _Label_1527 else goto _Label_1528
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1528
	jmp	_Label_1527
_Label_1527:
	mov	1094,r13		! source line 1094
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_1530 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1531 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1530  sizeInBytes=4
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
	jmp	_Label_1526
_Label_1528:
! ASSIGNMENT STATEMENT...
	mov	1102,r13		! source line 1102
	mov	"\0\0AS",r10
	mov	1102,r13		! source line 1102
	mov	"\0\0SE",r10
!   _temp_1532 = &freeList
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
!   _temp_1533 = pcb + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1533 = nextPid  (sizeInBytes=4)
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
!   _temp_1534 = pcb + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1534 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_1535 = &processManagerLock
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
	.word	_Label_1536
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1537
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1538
	.word	-12
	.word	4
	.word	_Label_1539
	.word	-16
	.word	4
	.word	_Label_1540
	.word	-20
	.word	4
	.word	_Label_1541
	.word	-24
	.word	4
	.word	_Label_1542
	.word	-28
	.word	4
	.word	_Label_1543
	.word	-32
	.word	4
	.word	_Label_1544
	.word	-36
	.word	4
	.word	_Label_1545
	.word	-40
	.word	4
	.word	_Label_1546
	.word	-44
	.word	4
	.word	0
_Label_1536:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1537:
	.ascii	"Pself\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1534\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1533\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1532\0"
	.align
_Label_1542:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1543:
	.byte	'?'
	.ascii	"_temp_1530\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1529\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1546:
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
_Label_3157:
	push	r0
	sub	r1,1,r1
	bne	_Label_3157
	mov	1115,r13		! source line 1115
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1121,r13		! source line 1121
	mov	"\0\0SE",r10
!   _temp_1547 = &processManagerLock
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
!   _temp_1548 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1548 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1124,r13		! source line 1124
	mov	"\0\0SE",r10
!   _temp_1549 = &freeList
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
!   _temp_1550 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1551 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1550  sizeInBytes=4
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
!   _temp_1552 = &processManagerLock
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
	.word	_Label_1553
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1554
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1555
	.word	12
	.word	4
	.word	_Label_1556
	.word	-12
	.word	4
	.word	_Label_1557
	.word	-16
	.word	4
	.word	_Label_1558
	.word	-20
	.word	4
	.word	_Label_1559
	.word	-24
	.word	4
	.word	_Label_1560
	.word	-28
	.word	4
	.word	_Label_1561
	.word	-32
	.word	4
	.word	0
_Label_1553:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1554:
	.ascii	"Pself\0"
	.align
_Label_1555:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1549\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1562
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1562:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1563
	.word	_sourceFileName
	.word	270		! line number
	.word	76		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1563:
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
_Label_3158:
	push	r0
	sub	r1,1,r1
	bne	_Label_3158
	mov	1225,r13		! source line 1225
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1564 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1564  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1231,r13		! source line 1231
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0AS",r10
!   numberWaitingForTurn = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	1234,r13		! source line 1234
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
	mov	1235,r13		! source line 1235
	mov	"\0\0SE",r10
!   _temp_1566 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
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
	mov	1236,r13		! source line 1236
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1237,r13		! source line 1237
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
	mov	1238,r13		! source line 1238
	mov	"\0\0SE",r10
!   _temp_1568 = &frameManagerLock
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
	mov	1239,r13		! source line 1239
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
	mov	1240,r13		! source line 1240
	mov	"\0\0SE",r10
!   _temp_1570 = &newFramesAvailable
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
	mov	1241,r13		! source line 1241
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
	mov	1242,r13		! source line 1242
	mov	"\0\0SE",r10
!   _temp_1572 = &waitingForTurn
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
	mov	1248,r13		! source line 1248
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1577 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1578 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1577  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-64]
_Label_1573:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1578 then goto _Label_1576		
	load	[r14+-64],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1576
_Label_1574:
	mov	1248,r13		! source line 1248
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1581 = *i  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1581) then goto _Label_1580
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1580
!	jmp	_Label_1579
_Label_1579:
! THEN...
	mov	1252,r13		! source line 1252
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1582 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1582  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1252,r13		! source line 1252
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1580:
!   Increment the FOR-LOOP index variable and jump back
_Label_1575:
!   i = i + 4
	load	[r14+-64],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1573
! END FOR
_Label_1576:
! RETURN STATEMENT...
	mov	1248,r13		! source line 1248
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
	.word	_Label_1583
	.word	4		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1584
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1585
	.word	-12
	.word	4
	.word	_Label_1586
	.word	-16
	.word	4
	.word	_Label_1587
	.word	-20
	.word	4
	.word	_Label_1588
	.word	-24
	.word	4
	.word	_Label_1589
	.word	-28
	.word	4
	.word	_Label_1590
	.word	-32
	.word	4
	.word	_Label_1591
	.word	-36
	.word	4
	.word	_Label_1592
	.word	-40
	.word	4
	.word	_Label_1593
	.word	-44
	.word	4
	.word	_Label_1594
	.word	-48
	.word	4
	.word	_Label_1595
	.word	-52
	.word	4
	.word	_Label_1596
	.word	-56
	.word	4
	.word	_Label_1597
	.word	-60
	.word	4
	.word	_Label_1598
	.word	-64
	.word	4
	.word	0
_Label_1583:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1584:
	.ascii	"Pself\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1578\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1577\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1595:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1598:
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
_Label_3159:
	push	r0
	sub	r1,1,r1
	bne	_Label_3159
	mov	1259,r13		! source line 1259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1263,r13		! source line 1263
	mov	"\0\0SE",r10
!   _temp_1599 = &frameManagerLock
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
!   _temp_1600 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1600  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1601 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1601  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1265,r13		! source line 1265
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1602 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1602  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0SE",r10
!   _temp_1603 = &framesInUse
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
	mov	1268,r13		! source line 1268
	mov	"\0\0SE",r10
!   _temp_1604 = &frameManagerLock
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
	mov	1268,r13		! source line 1268
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
	.word	_Label_1605
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1606
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1607
	.word	-12
	.word	4
	.word	_Label_1608
	.word	-16
	.word	4
	.word	_Label_1609
	.word	-20
	.word	4
	.word	_Label_1610
	.word	-24
	.word	4
	.word	_Label_1611
	.word	-28
	.word	4
	.word	_Label_1612
	.word	-32
	.word	4
	.word	0
_Label_1605:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1606:
	.ascii	"Pself\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1604\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1603\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1610:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1611:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1612:
	.byte	'?'
	.ascii	"_temp_1599\0"
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
_Label_3160:
	push	r0
	sub	r1,1,r1
	bne	_Label_3160
	mov	1273,r13		! source line 1273
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1281,r13		! source line 1281
	mov	"\0\0SE",r10
!   _temp_1613 = &frameManagerLock
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
	mov	1286,r13		! source line 1286
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
	mov	1287,r13		! source line 1287
	mov	"\0\0IF",r10
!   if numberWaitingForTurn <= 1 then goto _Label_1615		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1615
!	jmp	_Label_1614
_Label_1614:
! THEN...
	mov	1288,r13		! source line 1288
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1288,r13		! source line 1288
	mov	"\0\0SE",r10
!   _temp_1616 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-44]
!   _temp_1617 = &waitingForTurn
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_1616  sizeInBytes=4
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
_Label_1615:
! WHILE STATEMENT...
	mov	1292,r13		! source line 1292
	mov	"\0\0WH",r10
_Label_1618:
!   if numberFreeFrames >= 1 then goto _Label_1620		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1620
!	jmp	_Label_1619
_Label_1619:
	mov	1292,r13		! source line 1292
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0SE",r10
!   _temp_1621 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-36]
!   _temp_1622 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_1621  sizeInBytes=4
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
	jmp	_Label_1618
_Label_1620:
! ASSIGNMENT STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0AS",r10
	mov	1297,r13		! source line 1297
	mov	"\0\0SE",r10
!   _temp_1623 = &framesInUse
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
	mov	1298,r13		! source line 1298
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
	mov	1302,r13		! source line 1302
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
	mov	1303,r13		! source line 1303
	mov	"\0\0SE",r10
!   _temp_1624 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   _temp_1625 = &waitingForTurn
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1624  sizeInBytes=4
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
	mov	1306,r13		! source line 1306
	mov	"\0\0SE",r10
!   _temp_1626 = &frameManagerLock
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
	mov	1309,r13		! source line 1309
	mov	"\0\0AS",r10
!   _temp_1627 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1627		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1311,r13		! source line 1311
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
	.word	_Label_1628
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1629
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1630
	.word	-12
	.word	4
	.word	_Label_1631
	.word	-16
	.word	4
	.word	_Label_1632
	.word	-20
	.word	4
	.word	_Label_1633
	.word	-24
	.word	4
	.word	_Label_1634
	.word	-28
	.word	4
	.word	_Label_1635
	.word	-32
	.word	4
	.word	_Label_1636
	.word	-36
	.word	4
	.word	_Label_1637
	.word	-40
	.word	4
	.word	_Label_1638
	.word	-44
	.word	4
	.word	_Label_1639
	.word	-48
	.word	4
	.word	_Label_1640
	.word	-52
	.word	4
	.word	_Label_1641
	.word	-56
	.word	4
	.word	0
_Label_1628:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1629:
	.ascii	"Pself\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1635:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1636:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1637:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1638:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1639:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1640:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1641:
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
_Label_3161:
	push	r0
	sub	r1,1,r1
	bne	_Label_3161
	mov	1316,r13		! source line 1316
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0SE",r10
!   _temp_1642 = &frameManagerLock
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
	mov	1327,r13		! source line 1327
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
	mov	1328,r13		! source line 1328
	mov	"\0\0IF",r10
!   if numberWaitingForTurn <= 1 then goto _Label_1644		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1644
!	jmp	_Label_1643
_Label_1643:
! THEN...
	mov	1329,r13		! source line 1329
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1329,r13		! source line 1329
	mov	"\0\0SE",r10
!   _temp_1645 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-56]
!   _temp_1646 = &waitingForTurn
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_1645  sizeInBytes=4
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
_Label_1644:
! WHILE STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0WH",r10
_Label_1647:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_1649		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1649
!	jmp	_Label_1648
_Label_1648:
	mov	1336,r13		! source line 1336
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1337,r13		! source line 1337
	mov	"\0\0SE",r10
!   _temp_1650 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-48]
!   _temp_1651 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_1650  sizeInBytes=4
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
	jmp	_Label_1647
_Label_1649:
! FOR STATEMENT...
	mov	1340,r13		! source line 1340
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1656 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1657 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1656  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-64]
_Label_1652:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1657 then goto _Label_1655		
	load	[r14+-64],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1655
_Label_1653:
	mov	1340,r13		! source line 1340
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1342,r13		! source line 1342
	mov	"\0\0AS",r10
	mov	1342,r13		! source line 1342
	mov	"\0\0SE",r10
!   _temp_1658 = &framesInUse
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
	mov	1346,r13		! source line 1346
	mov	"\0\0AS",r10
!   _temp_1659 = f * 8192		(int)
	load	[r14+-68],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   frameAddr = 1048576 + _temp_1659		(int)
	set	1048576,r1
	load	[r14+-28],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
! SEND STATEMENT...
	mov	1350,r13		! source line 1350
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
_Label_1654:
!   i = i + 1
	load	[r14+-64],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
	jmp	_Label_1652
! END FOR
_Label_1655:
! ASSIGNMENT STATEMENT...
	mov	1357,r13		! source line 1357
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
	mov	1358,r13		! source line 1358
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1660 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1660 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1359,r13		! source line 1359
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
	mov	1360,r13		! source line 1360
	mov	"\0\0SE",r10
!   _temp_1661 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   _temp_1662 = &waitingForTurn
	load	[r14+8],r1
	add	r1,60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1661  sizeInBytes=4
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
	mov	1362,r13		! source line 1362
	mov	"\0\0SE",r10
!   _temp_1663 = &frameManagerLock
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
	mov	1362,r13		! source line 1362
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
	.word	_Label_1664
	.word	12		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_1665
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1666
	.word	12
	.word	4
	.word	_Label_1667
	.word	16
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
	.word	_Label_1674
	.word	-36
	.word	4
	.word	_Label_1675
	.word	-40
	.word	4
	.word	_Label_1676
	.word	-44
	.word	4
	.word	_Label_1677
	.word	-48
	.word	4
	.word	_Label_1678
	.word	-52
	.word	4
	.word	_Label_1679
	.word	-56
	.word	4
	.word	_Label_1680
	.word	-60
	.word	4
	.word	_Label_1681
	.word	-64
	.word	4
	.word	_Label_1682
	.word	-68
	.word	4
	.word	_Label_1683
	.word	-72
	.word	4
	.word	0
_Label_1664:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1665:
	.ascii	"Pself\0"
	.align
_Label_1666:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1667:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1658\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1681:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1682:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1683:
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
_Label_3162:
	push	r0
	sub	r1,1,r1
	bne	_Label_3162
	mov	1367,r13		! source line 1367
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1375,r13		! source line 1375
	mov	"\0\0SE",r10
!   _temp_1684 = &frameManagerLock
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
	mov	1378,r13		! source line 1378
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1685 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numFramesReturned = *_temp_1685  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-52]
! FOR STATEMENT...
	mov	1382,r13		! source line 1382
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1690 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1691 = numFramesReturned - 1		(int)
	load	[r14+-52],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1690  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_1686:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1691 then goto _Label_1689		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1689
_Label_1687:
	mov	1382,r13		! source line 1382
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1383,r13		! source line 1383
	mov	"\0\0AS",r10
	mov	1383,r13		! source line 1383
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
	mov	1384,r13		! source line 1384
	mov	"\0\0AS",r10
!   _temp_1692 = frameAddr - 1048576		(int)
	load	[r14+-56],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_1692 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
! SEND STATEMENT...
	mov	1385,r13		! source line 1385
	mov	"\0\0SE",r10
!   _temp_1693 = &framesInUse
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
_Label_1688:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1686
! END FOR
_Label_1689:
! ASSIGNMENT STATEMENT...
	mov	1389,r13		! source line 1389
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
	mov	1392,r13		! source line 1392
	mov	"\0\0SE",r10
!   _temp_1694 = &frameManagerLock
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   _temp_1695 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1694  sizeInBytes=4
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
	mov	1394,r13		! source line 1394
	mov	"\0\0SE",r10
!   _temp_1696 = &frameManagerLock
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
	mov	1394,r13		! source line 1394
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
	.word	_Label_1697
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1698
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1699
	.word	12
	.word	4
	.word	_Label_1700
	.word	-12
	.word	4
	.word	_Label_1701
	.word	-16
	.word	4
	.word	_Label_1702
	.word	-20
	.word	4
	.word	_Label_1703
	.word	-24
	.word	4
	.word	_Label_1704
	.word	-28
	.word	4
	.word	_Label_1705
	.word	-32
	.word	4
	.word	_Label_1706
	.word	-36
	.word	4
	.word	_Label_1707
	.word	-40
	.word	4
	.word	_Label_1708
	.word	-44
	.word	4
	.word	_Label_1709
	.word	-48
	.word	4
	.word	_Label_1710
	.word	-52
	.word	4
	.word	_Label_1711
	.word	-56
	.word	4
	.word	_Label_1712
	.word	-60
	.word	4
	.word	0
_Label_1697:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1698:
	.ascii	"Pself\0"
	.align
_Label_1699:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1696\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1693\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1708:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1709:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1710:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
_Label_1711:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1712:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1713
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
_Label_1713:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1714
	.word	_sourceFileName
	.word	291		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1714:
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
_Label_3163:
	push	r0
	sub	r1,1,r1
	bne	_Label_3163
	mov	1405,r13		! source line 1405
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1409,r13		! source line 1409
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1410,r13		! source line 1410
	mov	"\0\0AS",r10
!   _temp_1715 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1717 = &_temp_1716
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1717 = _temp_1717 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1719:
!   Data Move: *_temp_1717 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1717 = _temp_1717 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1718 = _temp_1718 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1718) then goto _Label_1719
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1719
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1720 = &_temp_1716
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3164
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3164:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1715 = *_temp_1720  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3165:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3165
! RETURN STATEMENT...
	mov	1410,r13		! source line 1410
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
	.word	_Label_1721
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1722
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1723
	.word	-12
	.word	4
	.word	_Label_1724
	.word	-16
	.word	4
	.word	_Label_1725
	.word	-20
	.word	4
	.word	_Label_1726
	.word	-104
	.word	84
	.word	_Label_1727
	.word	-108
	.word	4
	.word	0
_Label_1721:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1722:
	.ascii	"Pself\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1715\0"
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
_Label_3166:
	push	r0
	sub	r1,1,r1
	bne	_Label_3166
	mov	1415,r13		! source line 1415
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1728 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1728  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1420,r13		! source line 1420
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1729 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1729  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1421,r13		! source line 1421
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1734 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1735 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1734  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1730:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1735 then goto _Label_1733		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1733
_Label_1731:
	mov	1422,r13		! source line 1422
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1736 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1736  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1423,r13		! source line 1423
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1738 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1738 [i ] into _temp_1739
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
!   _temp_1737 = _temp_1739		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1737  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1424,r13		! source line 1424
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1740 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1740  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1425,r13		! source line 1425
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1742 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1742 [i ] into _temp_1743
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
!   Data Move: _temp_1741 = *_temp_1743  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1741  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1426,r13		! source line 1426
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1744 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1744  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1427,r13		! source line 1427
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1745 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1745  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1428,r13		! source line 1428
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1746 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1746  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1429,r13		! source line 1429
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1430,r13		! source line 1430
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1748) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1747  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1747  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1430,r13		! source line 1430
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1749 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1749  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1431,r13		! source line 1431
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1432,r13		! source line 1432
	mov	"\0\0IF",r10
	mov	1432,r13		! source line 1432
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1753) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1752  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1752) then goto _Label_1751
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1751
!	jmp	_Label_1750
_Label_1750:
! THEN...
	mov	1433,r13		! source line 1433
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1755) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1754  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1754  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1433,r13		! source line 1433
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1756
_Label_1751:
! ELSE...
	mov	1435,r13		! source line 1435
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1757 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1757  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1435,r13		! source line 1435
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1756:
! CALL STATEMENT...
!   _temp_1758 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1758  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1437,r13		! source line 1437
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1438,r13		! source line 1438
	mov	"\0\0IF",r10
	mov	1438,r13		! source line 1438
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1761) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1759 else goto _Label_1760
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1760
	jmp	_Label_1759
_Label_1759:
! THEN...
	mov	1439,r13		! source line 1439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1762 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1762  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1439,r13		! source line 1439
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1763
_Label_1760:
! ELSE...
	mov	1441,r13		! source line 1441
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1764 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1764  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1441,r13		! source line 1441
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1763:
! CALL STATEMENT...
!   _temp_1765 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1765  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1443,r13		! source line 1443
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1444,r13		! source line 1444
	mov	"\0\0IF",r10
	mov	1444,r13		! source line 1444
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1768) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1766 else goto _Label_1767
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1767
	jmp	_Label_1766
_Label_1766:
! THEN...
	mov	1445,r13		! source line 1445
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1769 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1769  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1445,r13		! source line 1445
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1770
_Label_1767:
! ELSE...
	mov	1447,r13		! source line 1447
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1771 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1771  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1447,r13		! source line 1447
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1770:
! CALL STATEMENT...
!   _temp_1772 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1772  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1449,r13		! source line 1449
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0IF",r10
	mov	1450,r13		! source line 1450
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1775) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1773 else goto _Label_1774
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1774
	jmp	_Label_1773
_Label_1773:
! THEN...
	mov	1451,r13		! source line 1451
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1776 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1776  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1451,r13		! source line 1451
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1777
_Label_1774:
! ELSE...
	mov	1453,r13		! source line 1453
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1778 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1778  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1453,r13		! source line 1453
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1777:
! CALL STATEMENT...
!   _temp_1779 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1779  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1455,r13		! source line 1455
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0IF",r10
	mov	1456,r13		! source line 1456
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1782) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1780 else goto _Label_1781
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1781
	jmp	_Label_1780
_Label_1780:
! THEN...
	mov	1457,r13		! source line 1457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1783 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1783  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1457,r13		! source line 1457
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1784
_Label_1781:
! ELSE...
	mov	1459,r13		! source line 1459
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1785 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1785  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1459,r13		! source line 1459
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1784:
! CALL STATEMENT...
!   Call the function
	mov	1461,r13		! source line 1461
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1732:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1730
! END FOR
_Label_1733:
! RETURN STATEMENT...
	mov	1422,r13		! source line 1422
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
	.word	_Label_1786
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1787
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1788
	.word	-12
	.word	4
	.word	_Label_1789
	.word	-16
	.word	4
	.word	_Label_1790
	.word	-20
	.word	4
	.word	_Label_1791
	.word	-24
	.word	4
	.word	_Label_1792
	.word	-28
	.word	4
	.word	_Label_1793
	.word	-32
	.word	4
	.word	_Label_1794
	.word	-36
	.word	4
	.word	_Label_1795
	.word	-40
	.word	4
	.word	_Label_1796
	.word	-44
	.word	4
	.word	_Label_1797
	.word	-48
	.word	4
	.word	_Label_1798
	.word	-52
	.word	4
	.word	_Label_1799
	.word	-56
	.word	4
	.word	_Label_1800
	.word	-60
	.word	4
	.word	_Label_1801
	.word	-64
	.word	4
	.word	_Label_1802
	.word	-68
	.word	4
	.word	_Label_1803
	.word	-72
	.word	4
	.word	_Label_1804
	.word	-76
	.word	4
	.word	_Label_1805
	.word	-80
	.word	4
	.word	_Label_1806
	.word	-84
	.word	4
	.word	_Label_1807
	.word	-88
	.word	4
	.word	_Label_1808
	.word	-92
	.word	4
	.word	_Label_1809
	.word	-96
	.word	4
	.word	_Label_1810
	.word	-100
	.word	4
	.word	_Label_1811
	.word	-104
	.word	4
	.word	_Label_1812
	.word	-108
	.word	4
	.word	_Label_1813
	.word	-112
	.word	4
	.word	_Label_1814
	.word	-116
	.word	4
	.word	_Label_1815
	.word	-120
	.word	4
	.word	_Label_1816
	.word	-124
	.word	4
	.word	_Label_1817
	.word	-128
	.word	4
	.word	_Label_1818
	.word	-132
	.word	4
	.word	_Label_1819
	.word	-136
	.word	4
	.word	_Label_1820
	.word	-140
	.word	4
	.word	_Label_1821
	.word	-144
	.word	4
	.word	_Label_1822
	.word	-148
	.word	4
	.word	_Label_1823
	.word	-152
	.word	4
	.word	_Label_1824
	.word	-156
	.word	4
	.word	_Label_1825
	.word	-160
	.word	4
	.word	_Label_1826
	.word	-164
	.word	4
	.word	_Label_1827
	.word	-168
	.word	4
	.word	0
_Label_1786:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1787:
	.ascii	"Pself\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1785\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1776\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1775\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1772\0"
	.align
_Label_1796:
	.byte	'?'
	.ascii	"_temp_1771\0"
	.align
_Label_1797:
	.byte	'?'
	.ascii	"_temp_1769\0"
	.align
_Label_1798:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1799:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1800:
	.byte	'?'
	.ascii	"_temp_1764\0"
	.align
_Label_1801:
	.byte	'?'
	.ascii	"_temp_1762\0"
	.align
_Label_1802:
	.byte	'?'
	.ascii	"_temp_1761\0"
	.align
_Label_1803:
	.byte	'?'
	.ascii	"_temp_1758\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1808:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1809:
	.byte	'?'
	.ascii	"_temp_1749\0"
	.align
_Label_1810:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1811:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1812:
	.byte	'?'
	.ascii	"_temp_1746\0"
	.align
_Label_1813:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1814:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1743\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1742\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1739\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1824:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1825:
	.byte	'?'
	.ascii	"_temp_1729\0"
	.align
_Label_1826:
	.byte	'?'
	.ascii	"_temp_1728\0"
	.align
_Label_1827:
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
_Label_3167:
	push	r0
	sub	r1,1,r1
	bne	_Label_3167
	mov	1467,r13		! source line 1467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1472,r13		! source line 1472
	mov	"\0\0RE",r10
!   _temp_1830 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1830 [entry ] into _temp_1831
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
!   Data Move: _temp_1829 = *_temp_1831  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1828 = _temp_1829 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1828  (sizeInBytes=4)
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
	.word	_Label_1832
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1833
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1834
	.word	12
	.word	4
	.word	_Label_1835
	.word	-12
	.word	4
	.word	_Label_1836
	.word	-16
	.word	4
	.word	_Label_1837
	.word	-20
	.word	4
	.word	_Label_1838
	.word	-24
	.word	4
	.word	0
_Label_1832:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1833:
	.ascii	"Pself\0"
	.align
_Label_1834:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1831\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1830\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1828\0"
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
_Label_3168:
	push	r0
	sub	r1,1,r1
	bne	_Label_3168
	mov	1477,r13		! source line 1477
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0RE",r10
!   _temp_1841 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1841 [entry ] into _temp_1842
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
!   Data Move: _temp_1840 = *_temp_1842  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1839 = _temp_1840 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1839  (sizeInBytes=4)
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
	.word	_Label_1843
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1844
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1845
	.word	12
	.word	4
	.word	_Label_1846
	.word	-12
	.word	4
	.word	_Label_1847
	.word	-16
	.word	4
	.word	_Label_1848
	.word	-20
	.word	4
	.word	_Label_1849
	.word	-24
	.word	4
	.word	0
_Label_1843:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1844:
	.ascii	"Pself\0"
	.align
_Label_1845:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1846:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1839\0"
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
_Label_3169:
	push	r0
	sub	r1,1,r1
	bne	_Label_3169
	mov	1486,r13		! source line 1486
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
!   _temp_1850 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1850 [entry ] into _temp_1851
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
!   _temp_1855 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1855 [entry ] into _temp_1856
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
!   Data Move: _temp_1854 = *_temp_1856  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1853 = _temp_1854 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1852 = _temp_1853 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1851 = _temp_1852  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1491,r13		! source line 1491
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
	.word	_Label_1857
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1858
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1859
	.word	12
	.word	4
	.word	_Label_1860
	.word	16
	.word	4
	.word	_Label_1861
	.word	-12
	.word	4
	.word	_Label_1862
	.word	-16
	.word	4
	.word	_Label_1863
	.word	-20
	.word	4
	.word	_Label_1864
	.word	-24
	.word	4
	.word	_Label_1865
	.word	-28
	.word	4
	.word	_Label_1866
	.word	-32
	.word	4
	.word	_Label_1867
	.word	-36
	.word	4
	.word	0
_Label_1857:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1858:
	.ascii	"Pself\0"
	.align
_Label_1859:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1860:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1861:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1852\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1851\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1850\0"
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
_Label_3170:
	push	r0
	sub	r1,1,r1
	bne	_Label_3170
	mov	1496,r13		! source line 1496
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0RE",r10
!   _temp_1871 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1871 [entry ] into _temp_1872
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
!   Data Move: _temp_1870 = *_temp_1872  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1869 = _temp_1870 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1869) then goto _Label_1873
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1873
!   _temp_1868 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1874
_Label_1873:
!   _temp_1868 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1874:
!   ReturnResult: _temp_1868  (sizeInBytes=1)
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
	.word	_Label_1875
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1876
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1877
	.word	12
	.word	4
	.word	_Label_1878
	.word	-16
	.word	4
	.word	_Label_1879
	.word	-20
	.word	4
	.word	_Label_1880
	.word	-24
	.word	4
	.word	_Label_1881
	.word	-28
	.word	4
	.word	_Label_1882
	.word	-9
	.word	1
	.word	0
_Label_1875:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1876:
	.ascii	"Pself\0"
	.align
_Label_1877:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1882:
	.byte	'C'
	.ascii	"_temp_1868\0"
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
_Label_3171:
	push	r0
	sub	r1,1,r1
	bne	_Label_3171
	mov	1505,r13		! source line 1505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0RE",r10
!   _temp_1886 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1886 [entry ] into _temp_1887
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
!   Data Move: _temp_1885 = *_temp_1887  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1884 = _temp_1885 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1884) then goto _Label_1888
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1888
!   _temp_1883 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1889
_Label_1888:
!   _temp_1883 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1889:
!   ReturnResult: _temp_1883  (sizeInBytes=1)
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
	.word	_Label_1890
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1891
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1892
	.word	12
	.word	4
	.word	_Label_1893
	.word	-16
	.word	4
	.word	_Label_1894
	.word	-20
	.word	4
	.word	_Label_1895
	.word	-24
	.word	4
	.word	_Label_1896
	.word	-28
	.word	4
	.word	_Label_1897
	.word	-9
	.word	1
	.word	0
_Label_1890:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1891:
	.ascii	"Pself\0"
	.align
_Label_1892:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1897:
	.byte	'C'
	.ascii	"_temp_1883\0"
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
_Label_3172:
	push	r0
	sub	r1,1,r1
	bne	_Label_3172
	mov	1514,r13		! source line 1514
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0RE",r10
!   _temp_1901 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1901 [entry ] into _temp_1902
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
!   Data Move: _temp_1900 = *_temp_1902  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1899 = _temp_1900 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1899) then goto _Label_1903
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1903
!   _temp_1898 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1904
_Label_1903:
!   _temp_1898 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1904:
!   ReturnResult: _temp_1898  (sizeInBytes=1)
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
	.word	_Label_1905
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1906
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1907
	.word	12
	.word	4
	.word	_Label_1908
	.word	-16
	.word	4
	.word	_Label_1909
	.word	-20
	.word	4
	.word	_Label_1910
	.word	-24
	.word	4
	.word	_Label_1911
	.word	-28
	.word	4
	.word	_Label_1912
	.word	-9
	.word	1
	.word	0
_Label_1905:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1906:
	.ascii	"Pself\0"
	.align
_Label_1907:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1912:
	.byte	'C'
	.ascii	"_temp_1898\0"
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
_Label_3173:
	push	r0
	sub	r1,1,r1
	bne	_Label_3173
	mov	1523,r13		! source line 1523
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0RE",r10
!   _temp_1916 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1916 [entry ] into _temp_1917
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
!   Data Move: _temp_1915 = *_temp_1917  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1914 = _temp_1915 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1914) then goto _Label_1918
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1918
!   _temp_1913 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1919
_Label_1918:
!   _temp_1913 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1919:
!   ReturnResult: _temp_1913  (sizeInBytes=1)
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
	.word	_Label_1920
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1921
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1922
	.word	12
	.word	4
	.word	_Label_1923
	.word	-16
	.word	4
	.word	_Label_1924
	.word	-20
	.word	4
	.word	_Label_1925
	.word	-24
	.word	4
	.word	_Label_1926
	.word	-28
	.word	4
	.word	_Label_1927
	.word	-9
	.word	1
	.word	0
_Label_1920:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1921:
	.ascii	"Pself\0"
	.align
_Label_1922:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1927:
	.byte	'C'
	.ascii	"_temp_1913\0"
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
_Label_3174:
	push	r0
	sub	r1,1,r1
	bne	_Label_3174
	mov	1532,r13		! source line 1532
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0AS",r10
!   _temp_1928 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1928 [entry ] into _temp_1929
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
!   _temp_1932 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1932 [entry ] into _temp_1933
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
!   Data Move: _temp_1931 = *_temp_1933  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1930 = _temp_1931 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1929 = _temp_1930  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1536,r13		! source line 1536
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
	.word	_Label_1934
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1935
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1936
	.word	12
	.word	4
	.word	_Label_1937
	.word	-12
	.word	4
	.word	_Label_1938
	.word	-16
	.word	4
	.word	_Label_1939
	.word	-20
	.word	4
	.word	_Label_1940
	.word	-24
	.word	4
	.word	_Label_1941
	.word	-28
	.word	4
	.word	_Label_1942
	.word	-32
	.word	4
	.word	0
_Label_1934:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1935:
	.ascii	"Pself\0"
	.align
_Label_1936:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1928\0"
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
_Label_3175:
	push	r0
	sub	r1,1,r1
	bne	_Label_3175
	mov	1541,r13		! source line 1541
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1545,r13		! source line 1545
	mov	"\0\0AS",r10
!   _temp_1943 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1943 [entry ] into _temp_1944
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
!   _temp_1947 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1947 [entry ] into _temp_1948
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
!   Data Move: _temp_1946 = *_temp_1948  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1945 = _temp_1946 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1944 = _temp_1945  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
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
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1949
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1950
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1951
	.word	12
	.word	4
	.word	_Label_1952
	.word	-12
	.word	4
	.word	_Label_1953
	.word	-16
	.word	4
	.word	_Label_1954
	.word	-20
	.word	4
	.word	_Label_1955
	.word	-24
	.word	4
	.word	_Label_1956
	.word	-28
	.word	4
	.word	_Label_1957
	.word	-32
	.word	4
	.word	0
_Label_1949:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1950:
	.ascii	"Pself\0"
	.align
_Label_1951:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1943\0"
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
_Label_3176:
	push	r0
	sub	r1,1,r1
	bne	_Label_3176
	mov	1550,r13		! source line 1550
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1554,r13		! source line 1554
	mov	"\0\0AS",r10
!   _temp_1958 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1958 [entry ] into _temp_1959
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
!   _temp_1962 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1962 [entry ] into _temp_1963
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
!   Data Move: _temp_1961 = *_temp_1963  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1960 = _temp_1961 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1959 = _temp_1960  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1554,r13		! source line 1554
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
	.word	_Label_1964
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1965
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1966
	.word	12
	.word	4
	.word	_Label_1967
	.word	-12
	.word	4
	.word	_Label_1968
	.word	-16
	.word	4
	.word	_Label_1969
	.word	-20
	.word	4
	.word	_Label_1970
	.word	-24
	.word	4
	.word	_Label_1971
	.word	-28
	.word	4
	.word	_Label_1972
	.word	-32
	.word	4
	.word	0
_Label_1964:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1965:
	.ascii	"Pself\0"
	.align
_Label_1966:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1958\0"
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
_Label_3177:
	push	r0
	sub	r1,1,r1
	bne	_Label_3177
	mov	1559,r13		! source line 1559
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0AS",r10
!   _temp_1973 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1973 [entry ] into _temp_1974
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
!   _temp_1977 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1977 [entry ] into _temp_1978
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
!   Data Move: _temp_1976 = *_temp_1978  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1975 = _temp_1976 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1974 = _temp_1975  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1563,r13		! source line 1563
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
	.word	_Label_1979
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1980
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1981
	.word	12
	.word	4
	.word	_Label_1982
	.word	-12
	.word	4
	.word	_Label_1983
	.word	-16
	.word	4
	.word	_Label_1984
	.word	-20
	.word	4
	.word	_Label_1985
	.word	-24
	.word	4
	.word	_Label_1986
	.word	-28
	.word	4
	.word	_Label_1987
	.word	-32
	.word	4
	.word	0
_Label_1979:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1980:
	.ascii	"Pself\0"
	.align
_Label_1981:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1978\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1987:
	.byte	'?'
	.ascii	"_temp_1973\0"
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
_Label_3178:
	push	r0
	sub	r1,1,r1
	bne	_Label_3178
	mov	1568,r13		! source line 1568
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1572,r13		! source line 1572
	mov	"\0\0AS",r10
!   _temp_1988 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1988 [entry ] into _temp_1989
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
!   _temp_1992 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1992 [entry ] into _temp_1993
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
!   Data Move: _temp_1991 = *_temp_1993  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1990 = _temp_1991 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1989 = _temp_1990  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1572,r13		! source line 1572
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
	.word	_Label_1994
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1995
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1996
	.word	12
	.word	4
	.word	_Label_1997
	.word	-12
	.word	4
	.word	_Label_1998
	.word	-16
	.word	4
	.word	_Label_1999
	.word	-20
	.word	4
	.word	_Label_2000
	.word	-24
	.word	4
	.word	_Label_2001
	.word	-28
	.word	4
	.word	_Label_2002
	.word	-32
	.word	4
	.word	0
_Label_1994:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1995:
	.ascii	"Pself\0"
	.align
_Label_1996:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1993\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2002:
	.byte	'?'
	.ascii	"_temp_1988\0"
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
_Label_3179:
	push	r0
	sub	r1,1,r1
	bne	_Label_3179
	mov	1577,r13		! source line 1577
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1581,r13		! source line 1581
	mov	"\0\0AS",r10
!   _temp_2003 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2003 [entry ] into _temp_2004
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
!   _temp_2007 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2007 [entry ] into _temp_2008
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
!   Data Move: _temp_2006 = *_temp_2008  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2005 = _temp_2006 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2004 = _temp_2005  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1581,r13		! source line 1581
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
	.word	_Label_2009
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2010
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2011
	.word	12
	.word	4
	.word	_Label_2012
	.word	-12
	.word	4
	.word	_Label_2013
	.word	-16
	.word	4
	.word	_Label_2014
	.word	-20
	.word	4
	.word	_Label_2015
	.word	-24
	.word	4
	.word	_Label_2016
	.word	-28
	.word	4
	.word	_Label_2017
	.word	-32
	.word	4
	.word	0
_Label_2009:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_2010:
	.ascii	"Pself\0"
	.align
_Label_2011:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_2008\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_2003\0"
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
_Label_3180:
	push	r0
	sub	r1,1,r1
	bne	_Label_3180
	mov	1586,r13		! source line 1586
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1590,r13		! source line 1590
	mov	"\0\0AS",r10
!   _temp_2018 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2018 [entry ] into _temp_2019
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
!   _temp_2022 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2022 [entry ] into _temp_2023
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
!   Data Move: _temp_2021 = *_temp_2023  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2020 = _temp_2021 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2019 = _temp_2020  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1590,r13		! source line 1590
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
	.word	_Label_2024
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2025
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2026
	.word	12
	.word	4
	.word	_Label_2027
	.word	-12
	.word	4
	.word	_Label_2028
	.word	-16
	.word	4
	.word	_Label_2029
	.word	-20
	.word	4
	.word	_Label_2030
	.word	-24
	.word	4
	.word	_Label_2031
	.word	-28
	.word	4
	.word	_Label_2032
	.word	-32
	.word	4
	.word	0
_Label_2024:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_2025:
	.ascii	"Pself\0"
	.align
_Label_2026:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2027:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2028:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2029:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2030:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2031:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2032:
	.byte	'?'
	.ascii	"_temp_2018\0"
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
_Label_3181:
	push	r0
	sub	r1,1,r1
	bne	_Label_3181
	mov	1595,r13		! source line 1595
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1599,r13		! source line 1599
	mov	"\0\0AS",r10
!   _temp_2033 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2033 [entry ] into _temp_2034
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
!   _temp_2037 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2037 [entry ] into _temp_2038
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
!   Data Move: _temp_2036 = *_temp_2038  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2035 = _temp_2036 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2034 = _temp_2035  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1599,r13		! source line 1599
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
	.word	_Label_2039
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2040
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2041
	.word	12
	.word	4
	.word	_Label_2042
	.word	-12
	.word	4
	.word	_Label_2043
	.word	-16
	.word	4
	.word	_Label_2044
	.word	-20
	.word	4
	.word	_Label_2045
	.word	-24
	.word	4
	.word	_Label_2046
	.word	-28
	.word	4
	.word	_Label_2047
	.word	-32
	.word	4
	.word	0
_Label_2039:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2040:
	.ascii	"Pself\0"
	.align
_Label_2041:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2038\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2044:
	.byte	'?'
	.ascii	"_temp_2036\0"
	.align
_Label_2045:
	.byte	'?'
	.ascii	"_temp_2035\0"
	.align
_Label_2046:
	.byte	'?'
	.ascii	"_temp_2034\0"
	.align
_Label_2047:
	.byte	'?'
	.ascii	"_temp_2033\0"
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
_Label_3182:
	push	r0
	sub	r1,1,r1
	bne	_Label_3182
	mov	1604,r13		! source line 1604
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2049 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2049 [0 ] into _temp_2050
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
!   _temp_2048 = _temp_2050		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2051 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2048  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2051  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1610,r13		! source line 1610
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1610,r13		! source line 1610
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
	.word	_Label_2052
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2053
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2054
	.word	-12
	.word	4
	.word	_Label_2055
	.word	-16
	.word	4
	.word	_Label_2056
	.word	-20
	.word	4
	.word	_Label_2057
	.word	-24
	.word	4
	.word	0
_Label_2052:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2053:
	.ascii	"Pself\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2048\0"
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
_Label_3183:
	push	r0
	sub	r1,1,r1
	bne	_Label_3183
	mov	1615,r13		! source line 1615
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2058
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2058
	jmp	_Label_2059
_Label_2058:
! THEN...
	mov	1631,r13		! source line 1631
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2060
_Label_2059:
! ELSE...
	mov	1632,r13		! source line 1632
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1632,r13		! source line 1632
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2062		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2062
!	jmp	_Label_2061
_Label_2061:
! THEN...
	mov	1633,r13		! source line 1633
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1633,r13		! source line 1633
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2062:
! END IF...
_Label_2060:
! ASSIGNMENT STATEMENT...
	mov	1635,r13		! source line 1635
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
	mov	1636,r13		! source line 1636
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
	mov	1639,r13		! source line 1639
	mov	"\0\0WH",r10
_Label_2063:
!	jmp	_Label_2064
_Label_2064:
	mov	1639,r13		! source line 1639
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1640,r13		! source line 1640
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2067		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2067
!	jmp	_Label_2066
_Label_2066:
! THEN...
	mov	1641,r13		! source line 1641
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2068 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2068  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1641,r13		! source line 1641
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1642,r13		! source line 1642
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2067:
! IF STATEMENT...
	mov	1644,r13		! source line 1644
	mov	"\0\0IF",r10
	mov	1644,r13		! source line 1644
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2072) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2071  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2071 then goto _Label_2070 else goto _Label_2069
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2069
	jmp	_Label_2070
_Label_2069:
! THEN...
	mov	1645,r13		! source line 1645
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2073 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2073  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1645,r13		! source line 1645
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1646,r13		! source line 1646
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2070:
! ASSIGNMENT STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0AS",r10
	mov	1648,r13		! source line 1648
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2075) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2074  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2074 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1650,r13		! source line 1650
	mov	"\0\0WH",r10
_Label_2076:
!   if offset >= 8192 then goto _Label_2078		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2078
!	jmp	_Label_2077
_Label_2077:
	mov	1650,r13		! source line 1650
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2079 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2079  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1654,r13		! source line 1654
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1655,r13		! source line 1655
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1656,r13		! source line 1656
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1657,r13		! source line 1657
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1658,r13		! source line 1658
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2081		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2081
!	jmp	_Label_2080
_Label_2080:
! THEN...
	mov	1659,r13		! source line 1659
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2081:
! END WHILE...
	jmp	_Label_2076
_Label_2078:
! ASSIGNMENT STATEMENT...
	mov	1662,r13		! source line 1662
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1663,r13		! source line 1663
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2063
_Label_2065:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2082
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2083
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2084
	.word	12
	.word	4
	.word	_Label_2085
	.word	16
	.word	4
	.word	_Label_2086
	.word	20
	.word	4
	.word	_Label_2087
	.word	-9
	.word	1
	.word	_Label_2088
	.word	-16
	.word	4
	.word	_Label_2089
	.word	-20
	.word	4
	.word	_Label_2090
	.word	-24
	.word	4
	.word	_Label_2091
	.word	-28
	.word	4
	.word	_Label_2092
	.word	-10
	.word	1
	.word	_Label_2093
	.word	-32
	.word	4
	.word	_Label_2094
	.word	-36
	.word	4
	.word	_Label_2095
	.word	-40
	.word	4
	.word	_Label_2096
	.word	-44
	.word	4
	.word	_Label_2097
	.word	-48
	.word	4
	.word	0
_Label_2082:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2083:
	.ascii	"Pself\0"
	.align
_Label_2084:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2085:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2086:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2087:
	.byte	'C'
	.ascii	"_temp_2079\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2092:
	.byte	'C'
	.ascii	"_temp_2071\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2094:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2095:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2096:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2097:
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
_Label_3184:
	push	r0
	sub	r1,1,r1
	bne	_Label_3184
	mov	1669,r13		! source line 1669
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1680,r13		! source line 1680
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2098
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2098
	jmp	_Label_2099
_Label_2098:
! THEN...
	mov	1681,r13		! source line 1681
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1681,r13		! source line 1681
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2100
_Label_2099:
! ELSE...
	mov	1682,r13		! source line 1682
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1682,r13		! source line 1682
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2102		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2102
!	jmp	_Label_2101
_Label_2101:
! THEN...
	mov	1683,r13		! source line 1683
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1683,r13		! source line 1683
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2102:
! END IF...
_Label_2100:
! ASSIGNMENT STATEMENT...
	mov	1685,r13		! source line 1685
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
	mov	1686,r13		! source line 1686
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
	mov	1687,r13		! source line 1687
	mov	"\0\0WH",r10
_Label_2103:
!	jmp	_Label_2104
_Label_2104:
	mov	1687,r13		! source line 1687
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2109		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2109
	jmp	_Label_2106
_Label_2109:
	mov	1689,r13		! source line 1689
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2111) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2110  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2110 then goto _Label_2108 else goto _Label_2106
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2106
	jmp	_Label_2108
_Label_2108:
	mov	1690,r13		! source line 1690
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2113) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2112  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2112 then goto _Label_2107 else goto _Label_2106
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2106
	jmp	_Label_2107
_Label_2106:
! THEN...
	mov	1691,r13		! source line 1691
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1691,r13		! source line 1691
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2107:
! ASSIGNMENT STATEMENT...
	mov	1693,r13		! source line 1693
	mov	"\0\0AS",r10
	mov	1693,r13		! source line 1693
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2115) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2114  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2114 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1694,r13		! source line 1694
	mov	"\0\0WH",r10
_Label_2116:
!   if offset >= 8192 then goto _Label_2118		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2118
!	jmp	_Label_2117
_Label_2117:
	mov	1694,r13		! source line 1694
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2119 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2119  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1696,r13		! source line 1696
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1697,r13		! source line 1697
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1698,r13		! source line 1698
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1699,r13		! source line 1699
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2121		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2121
!	jmp	_Label_2120
_Label_2120:
! THEN...
	mov	1701,r13		! source line 1701
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2121:
! END WHILE...
	jmp	_Label_2116
_Label_2118:
! ASSIGNMENT STATEMENT...
	mov	1704,r13		! source line 1704
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1705,r13		! source line 1705
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2103
_Label_2105:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2122
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2123
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2124
	.word	12
	.word	4
	.word	_Label_2125
	.word	16
	.word	4
	.word	_Label_2126
	.word	20
	.word	4
	.word	_Label_2127
	.word	-9
	.word	1
	.word	_Label_2128
	.word	-16
	.word	4
	.word	_Label_2129
	.word	-20
	.word	4
	.word	_Label_2130
	.word	-24
	.word	4
	.word	_Label_2131
	.word	-10
	.word	1
	.word	_Label_2132
	.word	-28
	.word	4
	.word	_Label_2133
	.word	-11
	.word	1
	.word	_Label_2134
	.word	-32
	.word	4
	.word	_Label_2135
	.word	-36
	.word	4
	.word	_Label_2136
	.word	-40
	.word	4
	.word	_Label_2137
	.word	-44
	.word	4
	.word	0
_Label_2122:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2123:
	.ascii	"Pself\0"
	.align
_Label_2124:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2125:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2126:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2127:
	.byte	'C'
	.ascii	"_temp_2119\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2113\0"
	.align
_Label_2131:
	.byte	'C'
	.ascii	"_temp_2112\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2133:
	.byte	'C'
	.ascii	"_temp_2110\0"
	.align
_Label_2134:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2135:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2136:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2137:
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
_Label_3185:
	push	r0
	sub	r1,1,r1
	bne	_Label_3185
	mov	1711,r13		! source line 1711
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1735,r13		! source line 1735
	mov	"\0\0IF",r10
	mov	1735,r13		! source line 1735
	mov	"\0\0SE",r10
!   _temp_2141 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2142) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2141  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2140  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2140 >= 4 then goto _Label_2139		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2139
!	jmp	_Label_2138
_Label_2138:
! THEN...
	mov	1738,r13		! source line 1738
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1738,r13		! source line 1738
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2139:
! IF STATEMENT...
	mov	1742,r13		! source line 1742
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2144		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2144
!	jmp	_Label_2143
_Label_2143:
! THEN...
	mov	1743,r13		! source line 1743
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1743,r13		! source line 1743
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2144:
! ASSIGNMENT STATEMENT...
	mov	1746,r13		! source line 1746
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
	mov	1748,r13		! source line 1748
	mov	"\0\0RE",r10
	mov	1748,r13		! source line 1748
	mov	"\0\0SE",r10
!   _temp_2147 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2146 = _temp_2147 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2148 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2149) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2146  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2148  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2145  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2145  (sizeInBytes=4)
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
	.word	_Label_2150
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2151
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2152
	.word	12
	.word	4
	.word	_Label_2153
	.word	16
	.word	4
	.word	_Label_2154
	.word	20
	.word	4
	.word	_Label_2155
	.word	-12
	.word	4
	.word	_Label_2156
	.word	-16
	.word	4
	.word	_Label_2157
	.word	-20
	.word	4
	.word	_Label_2158
	.word	-24
	.word	4
	.word	_Label_2159
	.word	-28
	.word	4
	.word	_Label_2160
	.word	-32
	.word	4
	.word	_Label_2161
	.word	-36
	.word	4
	.word	_Label_2162
	.word	-40
	.word	4
	.word	_Label_2163
	.word	-44
	.word	4
	.word	0
_Label_2150:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2151:
	.ascii	"Pself\0"
	.align
_Label_2152:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2153:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2154:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2155:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2156:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
_Label_2157:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
_Label_2158:
	.byte	'?'
	.ascii	"_temp_2146\0"
	.align
_Label_2159:
	.byte	'?'
	.ascii	"_temp_2145\0"
	.align
_Label_2160:
	.byte	'?'
	.ascii	"_temp_2142\0"
	.align
_Label_2161:
	.byte	'?'
	.ascii	"_temp_2141\0"
	.align
_Label_2162:
	.byte	'?'
	.ascii	"_temp_2140\0"
	.align
_Label_2163:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2164
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2164:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2165
	.word	_sourceFileName
	.word	323		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2165:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3186:
	push	r0
	sub	r1,1,r1
	bne	_Label_3186
	mov	2199,r13		! source line 2199
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2166 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2166  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2200,r13		! source line 2200
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2205,r13		! source line 2205
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0SE",r10
!   _temp_2168 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0SE",r10
!   _temp_2170 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
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
	mov	2210,r13		! source line 2210
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2171
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2172
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2173
	.word	-12
	.word	4
	.word	_Label_2174
	.word	-16
	.word	4
	.word	_Label_2175
	.word	-20
	.word	4
	.word	_Label_2176
	.word	-24
	.word	4
	.word	_Label_2177
	.word	-28
	.word	4
	.word	0
_Label_2171:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2172:
	.ascii	"Pself\0"
	.align
_Label_2173:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3187:
	push	r0
	sub	r1,1,r1
	bne	_Label_3187
	mov	2215,r13		! source line 2215
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2228,r13		! source line 2228
	mov	"\0\0SE",r10
!   _temp_2178 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2229,r13		! source line 2229
	mov	"\0\0WH",r10
_Label_2179:
!	jmp	_Label_2180
_Label_2180:
	mov	2229,r13		! source line 2229
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0SE",r10
!   _temp_2182 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2183) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2182  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0SE",r10
!   _temp_2184 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2236,r13		! source line 2236
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2193 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2187
	cmp	r1,2
	be	_Label_2188
	cmp	r1,3
	be	_Label_2189
	cmp	r1,4
	be	_Label_2190
	cmp	r1,5
	be	_Label_2191
	cmp	r1,6
	be	_Label_2192
	jmp	_Label_2185
! CASE 1...
_Label_2187:
! SEND STATEMENT...
	mov	2238,r13		! source line 2238
	mov	"\0\0SE",r10
!   _temp_2194 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2188:
! CALL STATEMENT...
!   _temp_2195 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2195  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2241,r13		! source line 2241
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2189:
! CALL STATEMENT...
!   _temp_2196 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2196  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2243,r13		! source line 2243
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2190:
! CALL STATEMENT...
!   _temp_2197 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2197  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2245,r13		! source line 2245
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2191:
! BREAK STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0BR",r10
	jmp	_Label_2186
! CASE 6...
_Label_2192:
! CALL STATEMENT...
!   _temp_2198 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2198  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2251,r13		! source line 2251
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2185:
! CALL STATEMENT...
!   _temp_2199 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2199  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2253,r13		! source line 2253
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2186:
! END WHILE...
	jmp	_Label_2179
_Label_2181:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2200
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2201
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2202
	.word	12
	.word	4
	.word	_Label_2203
	.word	16
	.word	4
	.word	_Label_2204
	.word	20
	.word	4
	.word	_Label_2205
	.word	-12
	.word	4
	.word	_Label_2206
	.word	-16
	.word	4
	.word	_Label_2207
	.word	-20
	.word	4
	.word	_Label_2208
	.word	-24
	.word	4
	.word	_Label_2209
	.word	-28
	.word	4
	.word	_Label_2210
	.word	-32
	.word	4
	.word	_Label_2211
	.word	-36
	.word	4
	.word	_Label_2212
	.word	-40
	.word	4
	.word	_Label_2213
	.word	-44
	.word	4
	.word	_Label_2214
	.word	-48
	.word	4
	.word	_Label_2215
	.word	-52
	.word	4
	.word	0
_Label_2200:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2201:
	.ascii	"Pself\0"
	.align
_Label_2202:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2203:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2204:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2205:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2206:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2207:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2208:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2262,r13		! source line 2262
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2280,r13		! source line 2280
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2281,r13		! source line 2281
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2216
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2217
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2218
	.word	12
	.word	4
	.word	_Label_2219
	.word	16
	.word	4
	.word	_Label_2220
	.word	20
	.word	4
	.word	_Label_2221
	.word	24
	.word	4
	.word	0
_Label_2216:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2217:
	.ascii	"Pself\0"
	.align
_Label_2218:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2219:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2220:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2221:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3188:
	push	r0
	sub	r1,1,r1
	bne	_Label_3188
	mov	2288,r13		! source line 2288
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0SE",r10
!   _temp_2222 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2301,r13		! source line 2301
	mov	"\0\0WH",r10
_Label_2223:
!	jmp	_Label_2224
_Label_2224:
	mov	2301,r13		! source line 2301
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0SE",r10
!   _temp_2226 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2227) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2226  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2304,r13		! source line 2304
	mov	"\0\0SE",r10
!   _temp_2228 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2307,r13		! source line 2307
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2237 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2231
	cmp	r1,2
	be	_Label_2232
	cmp	r1,3
	be	_Label_2233
	cmp	r1,4
	be	_Label_2234
	cmp	r1,5
	be	_Label_2235
	cmp	r1,6
	be	_Label_2236
	jmp	_Label_2229
! CASE 1...
_Label_2231:
! SEND STATEMENT...
	mov	2309,r13		! source line 2309
	mov	"\0\0SE",r10
!   _temp_2238 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2310,r13		! source line 2310
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2232:
! CALL STATEMENT...
!   _temp_2239 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2239  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2312,r13		! source line 2312
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2233:
! CALL STATEMENT...
!   _temp_2240 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2240  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2314,r13		! source line 2314
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2234:
! CALL STATEMENT...
!   _temp_2241 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2241  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2316,r13		! source line 2316
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2235:
! BREAK STATEMENT...
	mov	2320,r13		! source line 2320
	mov	"\0\0BR",r10
	jmp	_Label_2230
! CASE 6...
_Label_2236:
! CALL STATEMENT...
!   _temp_2242 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2242  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2322,r13		! source line 2322
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2229:
! CALL STATEMENT...
!   _temp_2243 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2243  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2324,r13		! source line 2324
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2230:
! END WHILE...
	jmp	_Label_2223
_Label_2225:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2244
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2245
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2246
	.word	12
	.word	4
	.word	_Label_2247
	.word	16
	.word	4
	.word	_Label_2248
	.word	20
	.word	4
	.word	_Label_2249
	.word	-12
	.word	4
	.word	_Label_2250
	.word	-16
	.word	4
	.word	_Label_2251
	.word	-20
	.word	4
	.word	_Label_2252
	.word	-24
	.word	4
	.word	_Label_2253
	.word	-28
	.word	4
	.word	_Label_2254
	.word	-32
	.word	4
	.word	_Label_2255
	.word	-36
	.word	4
	.word	_Label_2256
	.word	-40
	.word	4
	.word	_Label_2257
	.word	-44
	.word	4
	.word	_Label_2258
	.word	-48
	.word	4
	.word	_Label_2259
	.word	-52
	.word	4
	.word	0
_Label_2244:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2245:
	.ascii	"Pself\0"
	.align
_Label_2246:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2247:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2248:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2333,r13		! source line 2333
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2348,r13		! source line 2348
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2352,r13		! source line 2352
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2260
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2261
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2262
	.word	12
	.word	4
	.word	_Label_2263
	.word	16
	.word	4
	.word	_Label_2264
	.word	20
	.word	4
	.word	_Label_2265
	.word	24
	.word	4
	.word	0
_Label_2260:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2261:
	.ascii	"Pself\0"
	.align
_Label_2262:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2263:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2264:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2265:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2266
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2266:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2267
	.word	_sourceFileName
	.word	346		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2267:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3189:
	push	r0
	sub	r1,1,r1
	bne	_Label_3189
	mov	2364,r13		! source line 2364
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2268 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2268  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2371,r13		! source line 2371
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2373,r13		! source line 2373
	mov	"\0\0SE",r10
!   _temp_2270 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0SE",r10
!   _temp_2273 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2379,r13		! source line 2379
	mov	"\0\0AS",r10
!   _temp_2274 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2276 = &_temp_2275
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2276 = _temp_2276 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2278 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3190:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3190
!   _temp_2278 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2280:
!   Data Move: *_temp_2276 = _temp_2278  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3191:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3191
!   _temp_2276 = _temp_2276 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2277 = _temp_2277 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2277) then goto _Label_2280
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2280
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2281 = &_temp_2275
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3192
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3192:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2274 = *_temp_2281  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3193:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3193
! FOR STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2286 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2287 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2286  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2282:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2287 then goto _Label_2285		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2285
_Label_2283:
	mov	2381,r13		! source line 2381
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0AS",r10
!   _temp_2288 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2288 [i ] into _temp_2289
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2290 = _temp_2289 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2290 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0SE",r10
!   _temp_2291 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2291 [i ] into _temp_2292
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0SE",r10
!   _temp_2294 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2294 [i ] into _temp_2295
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2293 = _temp_2295		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2296 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2293  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2284:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2282
! END FOR
_Label_2285:
! ASSIGNMENT STATEMENT...
	mov	2388,r13		! source line 2388
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0SE",r10
!   _temp_2299 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0AS",r10
!   _temp_2300 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2302 = &_temp_2301
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2302 = _temp_2302 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2304 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3194:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3194
!   _temp_2304 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2306:
!   Data Move: *_temp_2302 = _temp_2304  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3195:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3195
!   _temp_2302 = _temp_2302 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2303 = _temp_2303 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2303) then goto _Label_2306
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2306
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2307 = &_temp_2301
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3196
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3196:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2300 = *_temp_2307  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3197:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3197
! FOR STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2312 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2313 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2312  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2308:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2313 then goto _Label_2311		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2311
_Label_2309:
	mov	2393,r13		! source line 2393
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2394,r13		! source line 2394
	mov	"\0\0AS",r10
!   _temp_2314 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2314 [i ] into _temp_2315
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2316 = _temp_2315 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2316 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2395,r13		! source line 2395
	mov	"\0\0SE",r10
!   _temp_2318 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2318 [i ] into _temp_2319
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2317 = _temp_2319		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2320 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2317  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2310:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2308
! END FOR
_Label_2311:
! ASSIGNMENT STATEMENT...
	mov	2399,r13		! source line 2399
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3198:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3198
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2400,r13		! source line 2400
	mov	"\0\0AS",r10
!   _temp_2322 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2323 = _temp_2322 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2323 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0AS",r10
	mov	2405,r13		! source line 2405
	mov	"\0\0SE",r10
!   _temp_2324 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0SE",r10
!   _temp_2325 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2326
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2327
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2328
	.word	-12
	.word	4
	.word	_Label_2329
	.word	-16
	.word	4
	.word	_Label_2330
	.word	-20
	.word	4
	.word	_Label_2331
	.word	-24
	.word	4
	.word	_Label_2332
	.word	-28
	.word	4
	.word	_Label_2333
	.word	-32
	.word	4
	.word	_Label_2334
	.word	-36
	.word	4
	.word	_Label_2335
	.word	-40
	.word	4
	.word	_Label_2336
	.word	-44
	.word	4
	.word	_Label_2337
	.word	-48
	.word	4
	.word	_Label_2338
	.word	-52
	.word	4
	.word	_Label_2339
	.word	-56
	.word	4
	.word	_Label_2340
	.word	-60
	.word	4
	.word	_Label_2341
	.word	-64
	.word	4
	.word	_Label_2342
	.word	-68
	.word	4
	.word	_Label_2343
	.word	-72
	.word	4
	.word	_Label_2344
	.word	-100
	.word	28
	.word	_Label_2345
	.word	-104
	.word	4
	.word	_Label_2346
	.word	-108
	.word	4
	.word	_Label_2347
	.word	-392
	.word	284
	.word	_Label_2348
	.word	-396
	.word	4
	.word	_Label_2349
	.word	-400
	.word	4
	.word	_Label_2350
	.word	-404
	.word	4
	.word	_Label_2351
	.word	-408
	.word	4
	.word	_Label_2352
	.word	-412
	.word	4
	.word	_Label_2353
	.word	-416
	.word	4
	.word	_Label_2354
	.word	-420
	.word	4
	.word	_Label_2355
	.word	-424
	.word	4
	.word	_Label_2356
	.word	-428
	.word	4
	.word	_Label_2357
	.word	-432
	.word	4
	.word	_Label_2358
	.word	-436
	.word	4
	.word	_Label_2359
	.word	-440
	.word	4
	.word	_Label_2360
	.word	-444
	.word	4
	.word	_Label_2361
	.word	-448
	.word	4
	.word	_Label_2362
	.word	-452
	.word	4
	.word	_Label_2363
	.word	-456
	.word	4
	.word	_Label_2364
	.word	-460
	.word	4
	.word	_Label_2365
	.word	-500
	.word	40
	.word	_Label_2366
	.word	-504
	.word	4
	.word	_Label_2367
	.word	-508
	.word	4
	.word	_Label_2368
	.word	-912
	.word	404
	.word	_Label_2369
	.word	-916
	.word	4
	.word	_Label_2370
	.word	-920
	.word	4
	.word	_Label_2371
	.word	-924
	.word	4
	.word	_Label_2372
	.word	-928
	.word	4
	.word	_Label_2373
	.word	-932
	.word	4
	.word	_Label_2374
	.word	-936
	.word	4
	.word	_Label_2375
	.word	-940
	.word	4
	.word	_Label_2376
	.word	-944
	.word	4
	.word	0
_Label_2326:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2327:
	.ascii	"Pself\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2322\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2320\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2319\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2307\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2305\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2302\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2301\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2300\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2299\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2298\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2297\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2296\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2295\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2365:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2366:
	.byte	'?'
	.ascii	"_temp_2277\0"
	.align
_Label_2367:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2368:
	.byte	'?'
	.ascii	"_temp_2275\0"
	.align
_Label_2369:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2370:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2371:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2372:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2373:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2374:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2375:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2376:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3199:
	push	r0
	sub	r1,1,r1
	bne	_Label_3199
	mov	2413,r13		! source line 2413
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0SE",r10
!   _temp_2377 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2378 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2378  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2416,r13		! source line 2416
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2383 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2384 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2383  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2379:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2384 then goto _Label_2382		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2382
_Label_2380:
	mov	2417,r13		! source line 2417
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2385 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2385  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2418,r13		! source line 2418
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2419,r13		! source line 2419
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2386 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2386  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2420,r13		! source line 2420
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0SE",r10
!   _temp_2387 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2387 [i ] into _temp_2388
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2381:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2379
! END FOR
_Label_2382:
! CALL STATEMENT...
!   _temp_2389 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2389  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2423,r13		! source line 2423
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2424,r13		! source line 2424
	mov	"\0\0SE",r10
!   _temp_2390 = _function_211_printFCB
	set	_function_211_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2391 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2390  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2425,r13		! source line 2425
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2392 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2392  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2426,r13		! source line 2426
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2397 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2398 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2397  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2393:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2398 then goto _Label_2396		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2396
_Label_2394:
	mov	2427,r13		! source line 2427
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2399 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2399  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2428,r13		! source line 2428
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2429,r13		! source line 2429
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2400 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2400  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2430,r13		! source line 2430
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2402 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2402 [i ] into _temp_2403
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2401 = _temp_2403		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2401  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2431,r13		! source line 2431
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2404 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2404  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2432,r13		! source line 2432
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2433,r13		! source line 2433
	mov	"\0\0SE",r10
!   _temp_2405 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2405 [i ] into _temp_2406
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2395:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2393
! END FOR
_Label_2396:
! CALL STATEMENT...
!   _temp_2407 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2407  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2435,r13		! source line 2435
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0SE",r10
!   _temp_2408 = _function_210_printOpen
	set	_function_210_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2409 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2408  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0SE",r10
!   _temp_2410 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2437,r13		! source line 2437
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2411
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2412
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2413
	.word	-12
	.word	4
	.word	_Label_2414
	.word	-16
	.word	4
	.word	_Label_2415
	.word	-20
	.word	4
	.word	_Label_2416
	.word	-24
	.word	4
	.word	_Label_2417
	.word	-28
	.word	4
	.word	_Label_2418
	.word	-32
	.word	4
	.word	_Label_2419
	.word	-36
	.word	4
	.word	_Label_2420
	.word	-40
	.word	4
	.word	_Label_2421
	.word	-44
	.word	4
	.word	_Label_2422
	.word	-48
	.word	4
	.word	_Label_2423
	.word	-52
	.word	4
	.word	_Label_2424
	.word	-56
	.word	4
	.word	_Label_2425
	.word	-60
	.word	4
	.word	_Label_2426
	.word	-64
	.word	4
	.word	_Label_2427
	.word	-68
	.word	4
	.word	_Label_2428
	.word	-72
	.word	4
	.word	_Label_2429
	.word	-76
	.word	4
	.word	_Label_2430
	.word	-80
	.word	4
	.word	_Label_2431
	.word	-84
	.word	4
	.word	_Label_2432
	.word	-88
	.word	4
	.word	_Label_2433
	.word	-92
	.word	4
	.word	_Label_2434
	.word	-96
	.word	4
	.word	_Label_2435
	.word	-100
	.word	4
	.word	_Label_2436
	.word	-104
	.word	4
	.word	_Label_2437
	.word	-108
	.word	4
	.word	_Label_2438
	.word	-112
	.word	4
	.word	_Label_2439
	.word	-116
	.word	4
	.word	0
_Label_2411:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2412:
	.ascii	"Pself\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2407\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2406\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2405\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2399\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2397\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2388\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2387\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2386\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2438:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2439:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3200:
	push	r0
	sub	r1,1,r1
	bne	_Label_3200
	mov	2442,r13		! source line 2442
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2458,r13		! source line 2458
	mov	"\0\0AS",r10
	mov	2458,r13		! source line 2458
	mov	"\0\0SE",r10
!   _temp_2440 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2459,r13		! source line 2459
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2441
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2441
	jmp	_Label_2442
_Label_2441:
! THEN...
	mov	2460,r13		! source line 2460
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2442:
! SEND STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0SE",r10
!   _temp_2443 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0WH",r10
_Label_2444:
	mov	2465,r13		! source line 2465
	mov	"\0\0SE",r10
!   _temp_2447 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2445 else goto _Label_2446
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2446
	jmp	_Label_2445
_Label_2445:
	mov	2465,r13		! source line 2465
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2466,r13		! source line 2466
	mov	"\0\0SE",r10
!   _temp_2448 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2449 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2448  sizeInBytes=4
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
	jmp	_Label_2444
_Label_2446:
! ASSIGNMENT STATEMENT...
	mov	2468,r13		! source line 2468
	mov	"\0\0AS",r10
	mov	2468,r13		! source line 2468
	mov	"\0\0SE",r10
!   _temp_2450 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2471,r13		! source line 2471
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2451 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2451 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2472,r13		! source line 2472
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2452 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2452 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2453 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2453 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2477,r13		! source line 2477
	mov	"\0\0SE",r10
!   _temp_2454 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2478,r13		! source line 2478
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2455
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2456
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2457
	.word	12
	.word	4
	.word	_Label_2458
	.word	-12
	.word	4
	.word	_Label_2459
	.word	-16
	.word	4
	.word	_Label_2460
	.word	-20
	.word	4
	.word	_Label_2461
	.word	-24
	.word	4
	.word	_Label_2462
	.word	-28
	.word	4
	.word	_Label_2463
	.word	-32
	.word	4
	.word	_Label_2464
	.word	-36
	.word	4
	.word	_Label_2465
	.word	-40
	.word	4
	.word	_Label_2466
	.word	-44
	.word	4
	.word	_Label_2467
	.word	-48
	.word	4
	.word	_Label_2468
	.word	-52
	.word	4
	.word	_Label_2469
	.word	-56
	.word	4
	.word	0
_Label_2455:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2456:
	.ascii	"Pself\0"
	.align
_Label_2457:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2443\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2468:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2469:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3201:
	push	r0
	sub	r1,1,r1
	bne	_Label_3201
	mov	2483,r13		! source line 2483
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2508,r13		! source line 2508
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2511,r13		! source line 2511
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2512,r13		! source line 2512
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2513,r13		! source line 2513
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2471		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2471
!	jmp	_Label_2470
_Label_2470:
! THEN...
	mov	2514,r13		! source line 2514
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2472 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2472  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2514,r13		! source line 2514
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2471:
! ASSIGNMENT STATEMENT...
	mov	2518,r13		! source line 2518
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2519,r13		! source line 2519
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2520,r13		! source line 2520
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2521,r13		! source line 2521
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0WH",r10
_Label_2473:
!   if numFiles <= 0 then goto _Label_2475		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2475
!	jmp	_Label_2474
_Label_2474:
	mov	2524,r13		! source line 2524
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2476 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2476  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2525,r13		! source line 2525
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2477 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2477  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2527,r13		! source line 2527
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2478 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2478  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2529,r13		! source line 2529
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2482 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2482 then goto _Label_2480		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2480
!	jmp	_Label_2481
_Label_2481:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2484
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2483 = _temp_2484		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2483  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2532,r13		! source line 2532
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2479 else goto _Label_2480
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2480
	jmp	_Label_2479
_Label_2479:
! THEN...
	mov	2533,r13		! source line 2533
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2533,r13		! source line 2533
	mov	"\0\0BR",r10
	jmp	_Label_2475
! END IF...
_Label_2480:
! ASSIGNMENT STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2536,r13		! source line 2536
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2473
_Label_2475:
! IF STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2486		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2486
!	jmp	_Label_2485
_Label_2485:
! THEN...
	mov	2541,r13		! source line 2541
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2541,r13		! source line 2541
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2486:
! SEND STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0SE",r10
!   _temp_2487 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2492 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2493 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2492  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2488:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2493 then goto _Label_2491		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2491
_Label_2489:
	mov	2546,r13		! source line 2546
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0AS",r10
!   _temp_2494 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2494 [i ] into _temp_2495
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2495		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2499 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2498 = *_temp_2499  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2498 != start then goto _Label_2497		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2497
!	jmp	_Label_2496
_Label_2496:
! THEN...
	mov	2549,r13		! source line 2549
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2500 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2503 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2502 = *_temp_2503  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2501 = _temp_2502 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2500 = _temp_2501  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0SE",r10
!   _temp_2504 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2497:
!   Increment the FOR-LOOP index variable and jump back
_Label_2490:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2488
! END FOR
_Label_2491:
! WHILE STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0WH",r10
_Label_2505:
	mov	2556,r13		! source line 2556
	mov	"\0\0SE",r10
!   _temp_2508 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2506 else goto _Label_2507
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2507
	jmp	_Label_2506
_Label_2506:
	mov	2556,r13		! source line 2556
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2557,r13		! source line 2557
	mov	"\0\0SE",r10
!   _temp_2509 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2510 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2509  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2505
_Label_2507:
! ASSIGNMENT STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0AS",r10
	mov	2559,r13		! source line 2559
	mov	"\0\0SE",r10
!   _temp_2511 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2562,r13		! source line 2562
	mov	"\0\0SE",r10
!   _temp_2512 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2513 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2513 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2514 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2514 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2515 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2515 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2520 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2519 = *_temp_2520  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2519 < 0 then goto _Label_2518		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2518
	jmp	_Label_2516
_Label_2518:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2521 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2521 ) then goto _Label_2517		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2517
!	jmp	_Label_2516
_Label_2516:
! THEN...
	mov	2569,r13		! source line 2569
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2522 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2522  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2569,r13		! source line 2569
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2517:
! RETURN STATEMENT...
	mov	2571,r13		! source line 2571
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2523
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2524
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2525
	.word	12
	.word	4
	.word	_Label_2526
	.word	-12
	.word	4
	.word	_Label_2527
	.word	-16
	.word	4
	.word	_Label_2528
	.word	-20
	.word	4
	.word	_Label_2529
	.word	-24
	.word	4
	.word	_Label_2530
	.word	-28
	.word	4
	.word	_Label_2531
	.word	-32
	.word	4
	.word	_Label_2532
	.word	-36
	.word	4
	.word	_Label_2533
	.word	-40
	.word	4
	.word	_Label_2534
	.word	-44
	.word	4
	.word	_Label_2535
	.word	-48
	.word	4
	.word	_Label_2536
	.word	-52
	.word	4
	.word	_Label_2537
	.word	-56
	.word	4
	.word	_Label_2538
	.word	-60
	.word	4
	.word	_Label_2539
	.word	-64
	.word	4
	.word	_Label_2540
	.word	-68
	.word	4
	.word	_Label_2541
	.word	-72
	.word	4
	.word	_Label_2542
	.word	-76
	.word	4
	.word	_Label_2543
	.word	-80
	.word	4
	.word	_Label_2544
	.word	-84
	.word	4
	.word	_Label_2545
	.word	-88
	.word	4
	.word	_Label_2546
	.word	-92
	.word	4
	.word	_Label_2547
	.word	-96
	.word	4
	.word	_Label_2548
	.word	-100
	.word	4
	.word	_Label_2549
	.word	-104
	.word	4
	.word	_Label_2550
	.word	-108
	.word	4
	.word	_Label_2551
	.word	-112
	.word	4
	.word	_Label_2552
	.word	-116
	.word	4
	.word	_Label_2553
	.word	-120
	.word	4
	.word	_Label_2554
	.word	-124
	.word	4
	.word	_Label_2555
	.word	-128
	.word	4
	.word	_Label_2556
	.word	-132
	.word	4
	.word	_Label_2557
	.word	-136
	.word	4
	.word	_Label_2558
	.word	-140
	.word	4
	.word	_Label_2559
	.word	-144
	.word	4
	.word	_Label_2560
	.word	-148
	.word	4
	.word	_Label_2561
	.word	-152
	.word	4
	.word	_Label_2562
	.word	-156
	.word	4
	.word	_Label_2563
	.word	-160
	.word	4
	.word	0
_Label_2523:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2524:
	.ascii	"Pself\0"
	.align
_Label_2525:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2501\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2500\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2487\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2476\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2557:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2558:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2559:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2560:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2561:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2562:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2563:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3202:
	push	r0
	sub	r1,1,r1
	bne	_Label_3202
	mov	2584,r13		! source line 2584
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0IF",r10
!   _temp_2566 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2566 then goto _Label_2565		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2565
!	jmp	_Label_2564
_Label_2564:
! THEN...
	mov	2587,r13		! source line 2587
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2565:
! SEND STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0SE",r10
!   _temp_2567 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0SE",r10
!   _temp_2568 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2569 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2569  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2570 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2573 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2572 = *_temp_2573  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2571 = _temp_2572 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2570 = _temp_2571  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2577 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2576 = *_temp_2577  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2576 > 0 then goto _Label_2575		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2575
!	jmp	_Label_2574
_Label_2574:
! THEN...
	mov	2594,r13		! source line 2594
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0SE",r10
!   _temp_2578 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0SE",r10
!   _temp_2579 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2580 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2579  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2596,r13		! source line 2596
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2581 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2584 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2583 = *_temp_2584  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2582 = _temp_2583 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2581 = _temp_2582  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2597,r13		! source line 2597
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2588 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2587 = *_temp_2588  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2587 > 0 then goto _Label_2586		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2586
!	jmp	_Label_2585
_Label_2585:
! THEN...
	mov	2598,r13		! source line 2598
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2598,r13		! source line 2598
	mov	"\0\0SE",r10
!   _temp_2589 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	2599,r13		! source line 2599
	mov	"\0\0SE",r10
!   _temp_2590 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2591 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2590  sizeInBytes=4
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
! END IF...
_Label_2586:
! END IF...
_Label_2575:
! SEND STATEMENT...
	mov	2602,r13		! source line 2602
	mov	"\0\0SE",r10
!   _temp_2592 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2602,r13		! source line 2602
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2593
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2594
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2595
	.word	12
	.word	4
	.word	_Label_2596
	.word	-12
	.word	4
	.word	_Label_2597
	.word	-16
	.word	4
	.word	_Label_2598
	.word	-20
	.word	4
	.word	_Label_2599
	.word	-24
	.word	4
	.word	_Label_2600
	.word	-28
	.word	4
	.word	_Label_2601
	.word	-32
	.word	4
	.word	_Label_2602
	.word	-36
	.word	4
	.word	_Label_2603
	.word	-40
	.word	4
	.word	_Label_2604
	.word	-44
	.word	4
	.word	_Label_2605
	.word	-48
	.word	4
	.word	_Label_2606
	.word	-52
	.word	4
	.word	_Label_2607
	.word	-56
	.word	4
	.word	_Label_2608
	.word	-60
	.word	4
	.word	_Label_2609
	.word	-64
	.word	4
	.word	_Label_2610
	.word	-68
	.word	4
	.word	_Label_2611
	.word	-72
	.word	4
	.word	_Label_2612
	.word	-76
	.word	4
	.word	_Label_2613
	.word	-80
	.word	4
	.word	_Label_2614
	.word	-84
	.word	4
	.word	_Label_2615
	.word	-88
	.word	4
	.word	_Label_2616
	.word	-92
	.word	4
	.word	_Label_2617
	.word	-96
	.word	4
	.word	_Label_2618
	.word	-100
	.word	4
	.word	_Label_2619
	.word	-104
	.word	4
	.word	0
_Label_2593:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2594:
	.ascii	"Pself\0"
	.align
_Label_2595:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2581\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2580\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2579\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2578\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2577\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2619:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3203:
	push	r0
	sub	r1,1,r1
	bne	_Label_3203
	mov	2607,r13		! source line 2607
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2623 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2622 = *_temp_2623  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2622) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2624 = _temp_2622 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2624 ) then goto _Label_2621		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2621
!	jmp	_Label_2620
_Label_2620:
! THEN...
	mov	2613,r13		! source line 2613
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2629 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2628 = *_temp_2629  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2628) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2630 = _temp_2628 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2627 = *_temp_2630  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2627 >= 0 then goto _Label_2626		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2626
!	jmp	_Label_2625
_Label_2625:
! THEN...
	mov	2614,r13		! source line 2614
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2631 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2631  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2614,r13		! source line 2614
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2626:
! ASSIGNMENT STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2633 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2632 = *_temp_2633  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2632) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2634 = _temp_2632 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2634 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2638 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2637 = *_temp_2638  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2637) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2639 = _temp_2637 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2636 = *_temp_2639  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2642 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2641 = *_temp_2642  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2641) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2643 = _temp_2641 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2640 = *_temp_2643  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2635 = _temp_2636 + _temp_2640		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2646 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2645 = *_temp_2646  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2645) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2647 = _temp_2645 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2644 = *_temp_2647  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2648 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2635  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2644  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2621:
! RETURN STATEMENT...
	mov	2612,r13		! source line 2612
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2649
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2650
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2651
	.word	12
	.word	4
	.word	_Label_2652
	.word	-12
	.word	4
	.word	_Label_2653
	.word	-16
	.word	4
	.word	_Label_2654
	.word	-20
	.word	4
	.word	_Label_2655
	.word	-24
	.word	4
	.word	_Label_2656
	.word	-28
	.word	4
	.word	_Label_2657
	.word	-32
	.word	4
	.word	_Label_2658
	.word	-36
	.word	4
	.word	_Label_2659
	.word	-40
	.word	4
	.word	_Label_2660
	.word	-44
	.word	4
	.word	_Label_2661
	.word	-48
	.word	4
	.word	_Label_2662
	.word	-52
	.word	4
	.word	_Label_2663
	.word	-56
	.word	4
	.word	_Label_2664
	.word	-60
	.word	4
	.word	_Label_2665
	.word	-64
	.word	4
	.word	_Label_2666
	.word	-68
	.word	4
	.word	_Label_2667
	.word	-72
	.word	4
	.word	_Label_2668
	.word	-76
	.word	4
	.word	_Label_2669
	.word	-80
	.word	4
	.word	_Label_2670
	.word	-84
	.word	4
	.word	_Label_2671
	.word	-88
	.word	4
	.word	_Label_2672
	.word	-92
	.word	4
	.word	_Label_2673
	.word	-96
	.word	4
	.word	_Label_2674
	.word	-100
	.word	4
	.word	_Label_2675
	.word	-104
	.word	4
	.word	_Label_2676
	.word	-108
	.word	4
	.word	0
_Label_2649:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2650:
	.ascii	"Pself\0"
	.align
_Label_2651:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2645\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2642\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2671:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2672:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2674:
	.byte	'?'
	.ascii	"_temp_2624\0"
	.align
_Label_2675:
	.byte	'?'
	.ascii	"_temp_2623\0"
	.align
_Label_2676:
	.byte	'?'
	.ascii	"_temp_2622\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3204:
	push	r0
	sub	r1,1,r1
	bne	_Label_3204
	mov	2626,r13		! source line 2626
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2641,r13		! source line 2641
	mov	"\0\0SE",r10
!   _temp_2677 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2683		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2683
!   _temp_2682 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2684
_Label_2683:
!   _temp_2682 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2684:
!   if _temp_2682 then goto _Label_2681 else goto _Label_2678
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2678
	jmp	_Label_2681
_Label_2681:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2687 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2686 = *_temp_2687  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2686 == 0 then goto _Label_2688		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2688
!   _temp_2685 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2689
_Label_2688:
!   _temp_2685 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2689:
!   if _temp_2685 then goto _Label_2680 else goto _Label_2678
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2678
	jmp	_Label_2680
_Label_2680:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2692 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2691 = *_temp_2692  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2691) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2693 = _temp_2691 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2690 = *_temp_2693  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2690 >= 0 then goto _Label_2679		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2679
!	jmp	_Label_2678
_Label_2678:
! THEN...
	mov	2643,r13		! source line 2643
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2694 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2694  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2643,r13		! source line 2643
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2679:
! ASSIGNMENT STATEMENT...
	mov	2645,r13		! source line 2645
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2695 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2695  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2646,r13		! source line 2646
	mov	"\0\0WH",r10
_Label_2696:
!   if numBytes <= 0 then goto _Label_2698		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2698
!	jmp	_Label_2697
_Label_2697:
	mov	2646,r13		! source line 2646
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2655,r13		! source line 2655
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2656,r13		! source line 2656
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2660,r13		! source line 2660
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2702 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2701 = *_temp_2702  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2701 == sector then goto _Label_2700		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2700
!	jmp	_Label_2699
_Label_2699:
! THEN...
	mov	2661,r13		! source line 2661
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2661,r13		! source line 2661
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2703) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2663,r13		! source line 2663
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2706 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2705 = *_temp_2706  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2704 = sector + _temp_2705		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2708 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2707 = *_temp_2708  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2709 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2704  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2707  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2666,r13		! source line 2666
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2710 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2710 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2667,r13		! source line 2667
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2711 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2711 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2700:
! ASSIGNMENT STATEMENT...
	mov	2669,r13		! source line 2669
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2713 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2712 = *_temp_2713  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2712 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2670,r13		! source line 2670
	mov	"\0\0AS",r10
!   _temp_2714 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2714  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2670,r13		! source line 2670
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2674,r13		! source line 2674
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2675,r13		! source line 2675
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2677,r13		! source line 2677
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2696
_Label_2698:
! SEND STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0SE",r10
!   _temp_2715 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2685,r13		! source line 2685
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2716
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2717
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2718
	.word	12
	.word	4
	.word	_Label_2719
	.word	16
	.word	4
	.word	_Label_2720
	.word	20
	.word	4
	.word	_Label_2721
	.word	24
	.word	4
	.word	_Label_2722
	.word	-16
	.word	4
	.word	_Label_2723
	.word	-20
	.word	4
	.word	_Label_2724
	.word	-24
	.word	4
	.word	_Label_2725
	.word	-28
	.word	4
	.word	_Label_2726
	.word	-32
	.word	4
	.word	_Label_2727
	.word	-36
	.word	4
	.word	_Label_2728
	.word	-40
	.word	4
	.word	_Label_2729
	.word	-44
	.word	4
	.word	_Label_2730
	.word	-48
	.word	4
	.word	_Label_2731
	.word	-52
	.word	4
	.word	_Label_2732
	.word	-56
	.word	4
	.word	_Label_2733
	.word	-60
	.word	4
	.word	_Label_2734
	.word	-64
	.word	4
	.word	_Label_2735
	.word	-68
	.word	4
	.word	_Label_2736
	.word	-72
	.word	4
	.word	_Label_2737
	.word	-76
	.word	4
	.word	_Label_2738
	.word	-80
	.word	4
	.word	_Label_2739
	.word	-84
	.word	4
	.word	_Label_2740
	.word	-88
	.word	4
	.word	_Label_2741
	.word	-92
	.word	4
	.word	_Label_2742
	.word	-96
	.word	4
	.word	_Label_2743
	.word	-100
	.word	4
	.word	_Label_2744
	.word	-104
	.word	4
	.word	_Label_2745
	.word	-9
	.word	1
	.word	_Label_2746
	.word	-10
	.word	1
	.word	_Label_2747
	.word	-108
	.word	4
	.word	_Label_2748
	.word	-112
	.word	4
	.word	_Label_2749
	.word	-116
	.word	4
	.word	_Label_2750
	.word	-120
	.word	4
	.word	_Label_2751
	.word	-124
	.word	4
	.word	_Label_2752
	.word	-128
	.word	4
	.word	0
_Label_2716:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2717:
	.ascii	"Pself\0"
	.align
_Label_2718:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2719:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2720:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2721:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2722:
	.byte	'?'
	.ascii	"_temp_2715\0"
	.align
_Label_2723:
	.byte	'?'
	.ascii	"_temp_2714\0"
	.align
_Label_2724:
	.byte	'?'
	.ascii	"_temp_2713\0"
	.align
_Label_2725:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2727:
	.byte	'?'
	.ascii	"_temp_2710\0"
	.align
_Label_2728:
	.byte	'?'
	.ascii	"_temp_2709\0"
	.align
_Label_2729:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2730:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2731:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2732:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2702\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2701\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2691\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2690\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2687\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2686\0"
	.align
_Label_2745:
	.byte	'C'
	.ascii	"_temp_2685\0"
	.align
_Label_2746:
	.byte	'C'
	.ascii	"_temp_2682\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2748:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2749:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2750:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2751:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2752:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3205:
	push	r0
	sub	r1,1,r1
	bne	_Label_3205
	mov	2690,r13		! source line 2690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2706,r13		! source line 2706
	mov	"\0\0SE",r10
!   _temp_2753 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2707,r13		! source line 2707
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2759		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2759
!   _temp_2758 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2760
_Label_2759:
!   _temp_2758 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2760:
!   if _temp_2758 then goto _Label_2757 else goto _Label_2754
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2754
	jmp	_Label_2757
_Label_2757:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2763 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2762 = *_temp_2763  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2762 == 0 then goto _Label_2764		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2764
!   _temp_2761 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2765
_Label_2764:
!   _temp_2761 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2765:
!   if _temp_2761 then goto _Label_2756 else goto _Label_2754
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2754
	jmp	_Label_2756
_Label_2756:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2768 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2767 = *_temp_2768  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2767) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2769 = _temp_2767 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2766 = *_temp_2769  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2766 >= 0 then goto _Label_2755		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2755
!	jmp	_Label_2754
_Label_2754:
! THEN...
	mov	2708,r13		! source line 2708
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2770 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2770  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2708,r13		! source line 2708
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2755:
! ASSIGNMENT STATEMENT...
	mov	2710,r13		! source line 2710
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2771 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2771  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2711,r13		! source line 2711
	mov	"\0\0WH",r10
_Label_2772:
!   if numBytes <= 0 then goto _Label_2774		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2774
!	jmp	_Label_2773
_Label_2773:
	mov	2711,r13		! source line 2711
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2720,r13		! source line 2720
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2721,r13		! source line 2721
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2725,r13		! source line 2725
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2778 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2777 = *_temp_2778  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2777 == sector then goto _Label_2776		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2776
!	jmp	_Label_2775
_Label_2775:
! THEN...
	mov	2727,r13		! source line 2727
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2727,r13		! source line 2727
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2779) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2776:
! ASSIGNMENT STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2781 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2780 = *_temp_2781  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2780 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0AS",r10
!   _temp_2782 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2782  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2730,r13		! source line 2730
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2786 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2785 = *_temp_2786  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2785 != sector then goto _Label_2784		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2784
!	jmp	_Label_2783
_Label_2783:
	jmp	_Label_2787
_Label_2784:
! ELSE...
	mov	2733,r13		! source line 2733
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2733,r13		! source line 2733
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2790
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2790
	jmp	_Label_2789
_Label_2790:
!   if bytesToMove != 8192 then goto _Label_2789		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2789
!	jmp	_Label_2788
_Label_2788:
	jmp	_Label_2791
_Label_2789:
! ELSE...
	mov	2737,r13		! source line 2737
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2737,r13		! source line 2737
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2794 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2793 = *_temp_2794  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2792 = sector + _temp_2793		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2796 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2795 = *_temp_2796  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2797 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2792  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2795  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2791:
! END IF...
_Label_2787:
! ASSIGNMENT STATEMENT...
	mov	2741,r13		! source line 2741
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2798 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2798 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2742,r13		! source line 2742
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2799 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2799 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2746,r13		! source line 2746
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2748,r13		! source line 2748
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2749,r13		! source line 2749
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2772
_Label_2774:
! SEND STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0SE",r10
!   _temp_2800 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2801
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2802
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2803
	.word	12
	.word	4
	.word	_Label_2804
	.word	16
	.word	4
	.word	_Label_2805
	.word	20
	.word	4
	.word	_Label_2806
	.word	24
	.word	4
	.word	_Label_2807
	.word	-16
	.word	4
	.word	_Label_2808
	.word	-20
	.word	4
	.word	_Label_2809
	.word	-24
	.word	4
	.word	_Label_2810
	.word	-28
	.word	4
	.word	_Label_2811
	.word	-32
	.word	4
	.word	_Label_2812
	.word	-36
	.word	4
	.word	_Label_2813
	.word	-40
	.word	4
	.word	_Label_2814
	.word	-44
	.word	4
	.word	_Label_2815
	.word	-48
	.word	4
	.word	_Label_2816
	.word	-52
	.word	4
	.word	_Label_2817
	.word	-56
	.word	4
	.word	_Label_2818
	.word	-60
	.word	4
	.word	_Label_2819
	.word	-64
	.word	4
	.word	_Label_2820
	.word	-68
	.word	4
	.word	_Label_2821
	.word	-72
	.word	4
	.word	_Label_2822
	.word	-76
	.word	4
	.word	_Label_2823
	.word	-80
	.word	4
	.word	_Label_2824
	.word	-84
	.word	4
	.word	_Label_2825
	.word	-88
	.word	4
	.word	_Label_2826
	.word	-92
	.word	4
	.word	_Label_2827
	.word	-96
	.word	4
	.word	_Label_2828
	.word	-100
	.word	4
	.word	_Label_2829
	.word	-104
	.word	4
	.word	_Label_2830
	.word	-108
	.word	4
	.word	_Label_2831
	.word	-112
	.word	4
	.word	_Label_2832
	.word	-9
	.word	1
	.word	_Label_2833
	.word	-10
	.word	1
	.word	_Label_2834
	.word	-116
	.word	4
	.word	_Label_2835
	.word	-120
	.word	4
	.word	_Label_2836
	.word	-124
	.word	4
	.word	_Label_2837
	.word	-128
	.word	4
	.word	_Label_2838
	.word	-132
	.word	4
	.word	_Label_2839
	.word	-136
	.word	4
	.word	0
_Label_2801:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2802:
	.ascii	"Pself\0"
	.align
_Label_2803:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2804:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2805:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2806:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2807:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2808:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2809:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2812:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2792\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2786\0"
	.align
_Label_2817:
	.byte	'?'
	.ascii	"_temp_2785\0"
	.align
_Label_2818:
	.byte	'?'
	.ascii	"_temp_2782\0"
	.align
_Label_2819:
	.byte	'?'
	.ascii	"_temp_2781\0"
	.align
_Label_2820:
	.byte	'?'
	.ascii	"_temp_2780\0"
	.align
_Label_2821:
	.byte	'?'
	.ascii	"_temp_2779\0"
	.align
_Label_2822:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2771\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2770\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2829:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2830:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2831:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2832:
	.byte	'C'
	.ascii	"_temp_2761\0"
	.align
_Label_2833:
	.byte	'C'
	.ascii	"_temp_2758\0"
	.align
_Label_2834:
	.byte	'?'
	.ascii	"_temp_2753\0"
	.align
_Label_2835:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2836:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2837:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2838:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2839:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2840
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2840:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2841
	.word	_sourceFileName
	.word	371		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2841:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3206:
	push	r0
	sub	r1,1,r1
	bne	_Label_3206
	mov	2794,r13		! source line 2794
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2795,r13		! source line 2795
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2796,r13		! source line 2796
	mov	"\0\0AS",r10
	mov	2796,r13		! source line 2796
	mov	"\0\0SE",r10
!   _temp_2842 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2797,r13		! source line 2797
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2799,r13		! source line 2799
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2799,r13		! source line 2799
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2843
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2844
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2845
	.word	-12
	.word	4
	.word	0
_Label_2843:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2844:
	.ascii	"Pself\0"
	.align
_Label_2845:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3207:
	push	r0
	sub	r1,1,r1
	bne	_Label_3207
	mov	2804,r13		! source line 2804
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2846 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2846  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2805,r13		! source line 2805
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2806,r13		! source line 2806
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2847 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2847  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2807,r13		! source line 2807
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2808,r13		! source line 2808
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2848 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2848  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2809,r13		! source line 2809
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2810,r13		! source line 2810
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2849 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2849  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2811,r13		! source line 2811
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2812,r13		! source line 2812
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2850 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2850  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2813,r13		! source line 2813
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2814,r13		! source line 2814
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2851 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2851  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2815,r13		! source line 2815
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2816,r13		! source line 2816
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2817,r13		! source line 2817
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2852
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2853
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2854
	.word	-12
	.word	4
	.word	_Label_2855
	.word	-16
	.word	4
	.word	_Label_2856
	.word	-20
	.word	4
	.word	_Label_2857
	.word	-24
	.word	4
	.word	_Label_2858
	.word	-28
	.word	4
	.word	_Label_2859
	.word	-32
	.word	4
	.word	0
_Label_2852:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2853:
	.ascii	"Pself\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2855:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2860
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2860:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2861
	.word	_sourceFileName
	.word	388		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2861:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3208:
	push	r0
	sub	r1,1,r1
	bne	_Label_3208
	mov	2828,r13		! source line 2828
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2862 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2862  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2829,r13		! source line 2829
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2830,r13		! source line 2830
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2863 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2863  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2831,r13		! source line 2831
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2865		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2865
!	jmp	_Label_2864
_Label_2864:
! THEN...
	mov	2833,r13		! source line 2833
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2866
_Label_2865:
! ELSE...
	mov	2835,r13		! source line 2835
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2867 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2867  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2835,r13		! source line 2835
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2866:
! RETURN STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2868
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2869
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2870
	.word	-12
	.word	4
	.word	_Label_2871
	.word	-16
	.word	4
	.word	_Label_2872
	.word	-20
	.word	4
	.word	0
_Label_2868:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2869:
	.ascii	"Pself\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2872:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3209:
	push	r0
	sub	r1,1,r1
	bne	_Label_3209
	mov	2841,r13		! source line 2841
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0SE",r10
!   _temp_2873 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2874 = _temp_2873 + 4
	load	[r14+-36],r1
	add	r1,4,r1
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
	mov	2852,r13		! source line 2852
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2853,r13		! source line 2853
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2854,r13		! source line 2854
	mov	"\0\0SE",r10
!   _temp_2875 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2876 = _temp_2875 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2855,r13		! source line 2855
	mov	"\0\0RE",r10
	mov	2855,r13		! source line 2855
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2879 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2878  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2877  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2877  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2880
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2881
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2882
	.word	12
	.word	4
	.word	_Label_2883
	.word	16
	.word	4
	.word	_Label_2884
	.word	-16
	.word	4
	.word	_Label_2885
	.word	-20
	.word	4
	.word	_Label_2886
	.word	-9
	.word	1
	.word	_Label_2887
	.word	-24
	.word	4
	.word	_Label_2888
	.word	-28
	.word	4
	.word	_Label_2889
	.word	-32
	.word	4
	.word	_Label_2890
	.word	-36
	.word	4
	.word	_Label_2891
	.word	-40
	.word	4
	.word	0
_Label_2880:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2881:
	.ascii	"Pself\0"
	.align
_Label_2882:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2883:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2879\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2886:
	.byte	'C'
	.ascii	"_temp_2877\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2891:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3210:
	push	r0
	sub	r1,1,r1
	bne	_Label_3210
	mov	2860,r13		! source line 2860
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2865,r13		! source line 2865
	mov	"\0\0IF",r10
	mov	2865,r13		! source line 2865
	mov	"\0\0SE",r10
!   _temp_2895 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2896) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2895  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2894  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2894 then goto _Label_2893 else goto _Label_2892
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2892
	jmp	_Label_2893
_Label_2892:
! THEN...
	mov	2866,r13		! source line 2866
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2897 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2897  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2866,r13		! source line 2866
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2893:
! RETURN STATEMENT...
	mov	2868,r13		! source line 2868
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2898
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2899
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2900
	.word	-16
	.word	4
	.word	_Label_2901
	.word	-20
	.word	4
	.word	_Label_2902
	.word	-24
	.word	4
	.word	_Label_2903
	.word	-9
	.word	1
	.word	_Label_2904
	.word	-28
	.word	4
	.word	0
_Label_2898:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2899:
	.ascii	"Pself\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2897\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2903:
	.byte	'C'
	.ascii	"_temp_2894\0"
	.align
_Label_2904:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3211:
	push	r0
	sub	r1,1,r1
	bne	_Label_3211
	mov	2873,r13		! source line 2873
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2908 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2907 = *_temp_2908  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2907) then goto _Label_2906
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2906
!	jmp	_Label_2905
_Label_2905:
! THEN...
	mov	2900,r13		! source line 2900
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2909 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2909  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2900,r13		! source line 2900
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2906:
! IF STATEMENT...
	mov	2904,r13		! source line 2904
	mov	"\0\0IF",r10
	mov	2904,r13		! source line 2904
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2913) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2912  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2912 == 1112300152 then goto _Label_2911		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2911
!	jmp	_Label_2910
_Label_2910:
! THEN...
	mov	2905,r13		! source line 2905
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2914 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2914  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2905,r13		! source line 2905
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2906,r13		! source line 2906
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2911:
! ASSIGNMENT STATEMENT...
	mov	2910,r13		! source line 2910
	mov	"\0\0AS",r10
	mov	2910,r13		! source line 2910
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2915) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0AS",r10
	mov	2911,r13		! source line 2911
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2916) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2912,r13		! source line 2912
	mov	"\0\0AS",r10
	mov	2912,r13		! source line 2912
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2917) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0AS",r10
	mov	2913,r13		! source line 2913
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2918) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0AS",r10
	mov	2914,r13		! source line 2914
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2919) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2915,r13		! source line 2915
	mov	"\0\0AS",r10
	mov	2915,r13		! source line 2915
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2920) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2918,r13		! source line 2918
	mov	"\0\0IF",r10
!   _temp_2923 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2923) then goto _Label_2922
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2922
!	jmp	_Label_2921
_Label_2921:
! THEN...
	mov	2919,r13		! source line 2919
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2924 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2924  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2919,r13		! source line 2919
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2920,r13		! source line 2920
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2922:
! ASSIGNMENT STATEMENT...
	mov	2922,r13		! source line 2922
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2926,r13		! source line 2926
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2926
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2926
!	jmp	_Label_2925
_Label_2925:
! THEN...
	mov	2927,r13		! source line 2927
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2927 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2927  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2927,r13		! source line 2927
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2928,r13		! source line 2928
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2926:
! IF STATEMENT...
	mov	2932,r13		! source line 2932
	mov	"\0\0IF",r10
!   _temp_2930 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2930) then goto _Label_2929
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2929
!	jmp	_Label_2928
_Label_2928:
! THEN...
	mov	2933,r13		! source line 2933
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2931 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2931  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2933,r13		! source line 2933
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2934,r13		! source line 2934
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2929:
! IF STATEMENT...
	mov	2936,r13		! source line 2936
	mov	"\0\0IF",r10
!   _temp_2934 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2934 then goto _Label_2933		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2933
!	jmp	_Label_2932
_Label_2932:
! THEN...
	mov	2937,r13		! source line 2937
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2935 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2935  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2937,r13		! source line 2937
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2938,r13		! source line 2938
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2933:
! ASSIGNMENT STATEMENT...
	mov	2940,r13		! source line 2940
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2943,r13		! source line 2943
	mov	"\0\0IF",r10
!   _temp_2938 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2938) then goto _Label_2937
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2937
!	jmp	_Label_2936
_Label_2936:
! THEN...
	mov	2944,r13		! source line 2944
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2939 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2939  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2944,r13		! source line 2944
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2945,r13		! source line 2945
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2937:
! IF STATEMENT...
	mov	2947,r13		! source line 2947
	mov	"\0\0IF",r10
!   _temp_2942 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2942 then goto _Label_2941		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2941
!	jmp	_Label_2940
_Label_2940:
! THEN...
	mov	2948,r13		! source line 2948
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2943 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2943  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2948,r13		! source line 2948
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2949,r13		! source line 2949
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2941:
! ASSIGNMENT STATEMENT...
	mov	2951,r13		! source line 2951
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2954,r13		! source line 2954
	mov	"\0\0AS",r10
!   _temp_2946 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2945 = _temp_2946 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2944 = _temp_2945 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2944 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2969,r13		! source line 2969
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2948		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2948
!	jmp	_Label_2947
_Label_2947:
! THEN...
	mov	2970,r13		! source line 2970
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2949 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2949  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2970,r13		! source line 2970
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2950 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2950  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2971,r13		! source line 2971
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2951 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2951  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2972,r13		! source line 2972
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2973,r13		! source line 2973
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2948:
! SEND STATEMENT...
	mov	2975,r13		! source line 2975
	mov	"\0\0SE",r10
!   _temp_2952 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2981,r13		! source line 2981
	mov	"\0\0IF",r10
	mov	2981,r13		! source line 2981
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2956) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2955  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2955 == 707406378 then goto _Label_2954		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2954
!	jmp	_Label_2953
_Label_2953:
! THEN...
	mov	2982,r13		! source line 2982
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2957 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2957  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2982,r13		! source line 2982
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2983,r13		! source line 2983
	mov	"\0\0SE",r10
!   _temp_2958 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2984,r13		! source line 2984
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2954:
! ASSIGNMENT STATEMENT...
	mov	2988,r13		! source line 2988
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2989,r13		! source line 2989
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2963 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2964 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2963  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2959:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2964 then goto _Label_2962		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2962
_Label_2960:
	mov	2989,r13		! source line 2989
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2990,r13		! source line 2990
	mov	"\0\0AS",r10
	mov	2990,r13		! source line 2990
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2993,r13		! source line 2993
	mov	"\0\0IF",r10
	mov	2993,r13		! source line 2993
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2968) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2967  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2967 then goto _Label_2966 else goto _Label_2965
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2965
	jmp	_Label_2966
_Label_2965:
! THEN...
	mov	2994,r13		! source line 2994
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2969 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2969  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2994,r13		! source line 2994
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2995,r13		! source line 2995
	mov	"\0\0SE",r10
!   _temp_2970 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2996,r13		! source line 2996
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2966:
! SEND STATEMENT...
	mov	2998,r13		! source line 2998
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2999,r13		! source line 2999
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2961:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2959
! END FOR
_Label_2962:
! IF STATEMENT...
	mov	3003,r13		! source line 3003
	mov	"\0\0IF",r10
	mov	3003,r13		! source line 3003
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2974) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2973  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2973 == 707406378 then goto _Label_2972		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2972
!	jmp	_Label_2971
_Label_2971:
! THEN...
	mov	3004,r13		! source line 3004
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2975 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2975  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	3004,r13		! source line 3004
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3005,r13		! source line 3005
	mov	"\0\0SE",r10
!   _temp_2976 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3006,r13		! source line 3006
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2972:
! FOR STATEMENT...
	mov	3010,r13		! source line 3010
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2981 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2982 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2981  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2977:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2982 then goto _Label_2980		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2980
_Label_2978:
	mov	3010,r13		! source line 3010
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	3011,r13		! source line 3011
	mov	"\0\0AS",r10
	mov	3011,r13		! source line 3011
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	3014,r13		! source line 3014
	mov	"\0\0IF",r10
	mov	3014,r13		! source line 3014
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2986) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2985  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2985 then goto _Label_2984 else goto _Label_2983
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2983
	jmp	_Label_2984
_Label_2983:
! THEN...
	mov	3015,r13		! source line 3015
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2987 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2987  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	3015,r13		! source line 3015
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3016,r13		! source line 3016
	mov	"\0\0SE",r10
!   _temp_2988 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3017,r13		! source line 3017
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2984:
! ASSIGNMENT STATEMENT...
	mov	3019,r13		! source line 3019
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2979:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2977
! END FOR
_Label_2980:
! IF STATEMENT...
	mov	3023,r13		! source line 3023
	mov	"\0\0IF",r10
	mov	3023,r13		! source line 3023
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2992) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2991  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2991 == 707406378 then goto _Label_2990		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2990
!	jmp	_Label_2989
_Label_2989:
! THEN...
	mov	3024,r13		! source line 3024
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2993 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2993  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	3024,r13		! source line 3024
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	3025,r13		! source line 3025
	mov	"\0\0SE",r10
!   _temp_2994 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	3026,r13		! source line 3026
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2990:
! ASSIGNMENT STATEMENT...
	mov	3030,r13		! source line 3030
	mov	"\0\0AS",r10
	mov	3030,r13		! source line 3030
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	3034,r13		! source line 3034
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	3037,r13		! source line 3037
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2995
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2996
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2997
	.word	12
	.word	4
	.word	_Label_2998
	.word	-16
	.word	4
	.word	_Label_2999
	.word	-20
	.word	4
	.word	_Label_3000
	.word	-24
	.word	4
	.word	_Label_3001
	.word	-28
	.word	4
	.word	_Label_3002
	.word	-32
	.word	4
	.word	_Label_3003
	.word	-36
	.word	4
	.word	_Label_3004
	.word	-40
	.word	4
	.word	_Label_3005
	.word	-9
	.word	1
	.word	_Label_3006
	.word	-44
	.word	4
	.word	_Label_3007
	.word	-48
	.word	4
	.word	_Label_3008
	.word	-52
	.word	4
	.word	_Label_3009
	.word	-56
	.word	4
	.word	_Label_3010
	.word	-60
	.word	4
	.word	_Label_3011
	.word	-64
	.word	4
	.word	_Label_3012
	.word	-68
	.word	4
	.word	_Label_3013
	.word	-72
	.word	4
	.word	_Label_3014
	.word	-76
	.word	4
	.word	_Label_3015
	.word	-10
	.word	1
	.word	_Label_3016
	.word	-80
	.word	4
	.word	_Label_3017
	.word	-84
	.word	4
	.word	_Label_3018
	.word	-88
	.word	4
	.word	_Label_3019
	.word	-92
	.word	4
	.word	_Label_3020
	.word	-96
	.word	4
	.word	_Label_3021
	.word	-100
	.word	4
	.word	_Label_3022
	.word	-104
	.word	4
	.word	_Label_3023
	.word	-108
	.word	4
	.word	_Label_3024
	.word	-112
	.word	4
	.word	_Label_3025
	.word	-116
	.word	4
	.word	_Label_3026
	.word	-120
	.word	4
	.word	_Label_3027
	.word	-124
	.word	4
	.word	_Label_3028
	.word	-128
	.word	4
	.word	_Label_3029
	.word	-132
	.word	4
	.word	_Label_3030
	.word	-136
	.word	4
	.word	_Label_3031
	.word	-140
	.word	4
	.word	_Label_3032
	.word	-144
	.word	4
	.word	_Label_3033
	.word	-148
	.word	4
	.word	_Label_3034
	.word	-152
	.word	4
	.word	_Label_3035
	.word	-156
	.word	4
	.word	_Label_3036
	.word	-160
	.word	4
	.word	_Label_3037
	.word	-164
	.word	4
	.word	_Label_3038
	.word	-168
	.word	4
	.word	_Label_3039
	.word	-172
	.word	4
	.word	_Label_3040
	.word	-176
	.word	4
	.word	_Label_3041
	.word	-180
	.word	4
	.word	_Label_3042
	.word	-184
	.word	4
	.word	_Label_3043
	.word	-188
	.word	4
	.word	_Label_3044
	.word	-192
	.word	4
	.word	_Label_3045
	.word	-196
	.word	4
	.word	_Label_3046
	.word	-200
	.word	4
	.word	_Label_3047
	.word	-204
	.word	4
	.word	_Label_3048
	.word	-208
	.word	4
	.word	_Label_3049
	.word	-212
	.word	4
	.word	_Label_3050
	.word	-216
	.word	4
	.word	_Label_3051
	.word	-220
	.word	4
	.word	_Label_3052
	.word	-224
	.word	4
	.word	_Label_3053
	.word	-228
	.word	4
	.word	_Label_3054
	.word	-232
	.word	4
	.word	_Label_3055
	.word	-236
	.word	4
	.word	_Label_3056
	.word	-240
	.word	4
	.word	_Label_3057
	.word	-244
	.word	4
	.word	_Label_3058
	.word	-248
	.word	4
	.word	_Label_3059
	.word	-252
	.word	4
	.word	_Label_3060
	.word	-256
	.word	4
	.word	_Label_3061
	.word	-260
	.word	4
	.word	_Label_3062
	.word	-264
	.word	4
	.word	_Label_3063
	.word	-268
	.word	4
	.word	0
_Label_2995:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2996:
	.ascii	"Pself\0"
	.align
_Label_2997:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2994\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2993\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2992\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2991\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2988\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2987\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2986\0"
	.align
_Label_3005:
	.byte	'C'
	.ascii	"_temp_2985\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2982\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2981\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2976\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2975\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2974\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2973\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2970\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2969\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_2968\0"
	.align
_Label_3015:
	.byte	'C'
	.ascii	"_temp_2967\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_2964\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_2958\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_3021:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_3022:
	.byte	'?'
	.ascii	"_temp_2952\0"
	.align
_Label_3023:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_3024:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_3025:
	.byte	'?'
	.ascii	"_temp_2949\0"
	.align
_Label_3026:
	.byte	'?'
	.ascii	"_temp_2946\0"
	.align
_Label_3027:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_3028:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_3029:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_3030:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_3031:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_3032:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_3033:
	.byte	'?'
	.ascii	"_temp_2935\0"
	.align
_Label_3034:
	.byte	'?'
	.ascii	"_temp_2934\0"
	.align
_Label_3035:
	.byte	'?'
	.ascii	"_temp_2931\0"
	.align
_Label_3036:
	.byte	'?'
	.ascii	"_temp_2930\0"
	.align
_Label_3037:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_3038:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_3039:
	.byte	'?'
	.ascii	"_temp_2923\0"
	.align
_Label_3040:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_3041:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_3042:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_3043:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_3044:
	.byte	'?'
	.ascii	"_temp_2916\0"
	.align
_Label_3045:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_3046:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_3047:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_3048:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_3049:
	.byte	'?'
	.ascii	"_temp_2909\0"
	.align
_Label_3050:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_3051:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_3052:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3053:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3054:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3055:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3056:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3057:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3058:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3059:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3060:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3061:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3062:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3063:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align

//INIT CODE
@256
D=A
@SP
M=D

@RET_Sys.init_1
D=A
@SP
M=M+1
A=M-1
M=D

@LCL
D=M
@SP
M=M+1
A=M-1
M=D

@ARG
D=M
@SP
M=M+1
A=M-1
M=D

@THIS
D=M
@SP
M=M+1
A=M-1
M=D

@THAT
D=M
@SP
M=M+1
A=M-1
M=D

@5
D=A
@SP
D=A-D
@ARG
M=D

@SP
D=A
@LCL
M=D

@Sys.init
0;JMP

(RET_Sys.init_1)

// File : Sys.vm //

// function Sys.init 0
(Sys.init)
@0
D=A

(INIT_ARGS_Sys.init_0)
@SP
M=M+1
A=M-1
M=0
D=D-1
@INIT_ARGS_Sys.init_0
D;JNE

// push constant 4
@4
D=A
@SP
M=M+1
A=M-1
M=D
// call Main.fibonacci 1
@RET_Main.fibonacci_2
D=A
@SP
M=M+1
A=M-1
M=D

@LCL
D=M
@SP
M=M+1
A=M-1
M=D

@ARG
D=M
@SP
M=M+1
A=M-1
M=D

@THIS
D=M
@SP
M=M+1
A=M-1
M=D

@THAT
D=M
@SP
M=M+1
A=M-1
M=D

@6
D=A
@SP
D=A-D
@ARG
M=D

@SP
D=A
@LCL
M=D

@Main.fibonacci
0;JMP

(RET_Main.fibonacci_2)
// label END
(END)
// goto END
@END
0;JMP

// File : Main.vm //

// function Main.fibonacci 0
(Main.fibonacci)
@0
D=A

(INIT_ARGS_Main.fibonacci_0)
@SP
M=M+1
A=M-1
M=0
D=D-1
@INIT_ARGS_Main.fibonacci_0
D;JNE

// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
// lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUE_CONDITION_1
D;JLT
D=0 // If no jump, we know the result is false
@LOAD_1
0;JMP
(TRUE_CONDITION_1)
D=-1
(LOAD_1)
@SP
A=M-1
M=D
// if-goto N_LT_2
@SP
AM=M-1
D=M
@N_LT_2
D;JNE
// goto N_GE_2
@N_GE_2
0;JMP
// label N_LT_2
(N_LT_2)
// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// return
@LCL
D=M
@R13
M=D

@5
A=D-A
D=M
@R14
M=D

@SP
AM=M-1
D=M
@ARG
A=M
M=D

@ARG
D=M
@SP
M=D+1

@R13
AM=M-1
D=M
@THAT
M=D

@R13
AM=M-1
D=M
@THIS
M=D

@R13
AM=M-1
D=M
@ARG
M=D

@R13
AM=M-1
D=M
@LCL
M=D

@R14
A=M
0;JMP

// label N_GE_2
(N_GE_2)
// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// call Main.fibonacci 1
@RET_Main.fibonacci_3
D=A
@SP
M=M+1
A=M-1
M=D

@LCL
D=M
@SP
M=M+1
A=M-1
M=D

@ARG
D=M
@SP
M=M+1
A=M-1
M=D

@THIS
D=M
@SP
M=M+1
A=M-1
M=D

@THAT
D=M
@SP
M=M+1
A=M-1
M=D

@6
D=A
@SP
D=A-D
@ARG
M=D

@SP
D=A
@LCL
M=D

@Main.fibonacci
0;JMP

(RET_Main.fibonacci_3)
// push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
// sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// call Main.fibonacci 1
@RET_Main.fibonacci_4
D=A
@SP
M=M+1
A=M-1
M=D

@LCL
D=M
@SP
M=M+1
A=M-1
M=D

@ARG
D=M
@SP
M=M+1
A=M-1
M=D

@THIS
D=M
@SP
M=M+1
A=M-1
M=D

@THAT
D=M
@SP
M=M+1
A=M-1
M=D

@6
D=A
@SP
D=A-D
@ARG
M=D

@SP
D=A
@LCL
M=D

@Main.fibonacci
0;JMP

(RET_Main.fibonacci_4)
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// return
@LCL
D=M
@R13
M=D

@5
A=D-A
D=M
@R14
M=D

@SP
AM=M-1
D=M
@ARG
A=M
M=D

@ARG
D=M
@SP
M=D+1

@R13
AM=M-1
D=M
@THAT
M=D

@R13
AM=M-1
D=M
@THIS
M=D

@R13
AM=M-1
D=M
@ARG
M=D

@R13
AM=M-1
D=M
@LCL
M=D

@R14
A=M
0;JMP
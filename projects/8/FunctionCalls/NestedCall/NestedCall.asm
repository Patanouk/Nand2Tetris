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

@SP
D=M
@5
D=D-A
@ARG
M=D

@SP
D=M
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
@AFTER_INIT_ARGS_Sys.init_0
D;JEQ

@SP
M=M+1
A=M-1
M=0
D=D-1
@INIT_ARGS_Sys.init_0
D;JMP
(AFTER_INIT_ARGS_Sys.init_0)

// push constant 4000
@4000
D=A
@SP
M=M+1
A=M-1
M=D
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push constant 5000
@5000
D=A
@SP
M=M+1
A=M-1
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// call Sys.main 0
@RET_Sys.main_2
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

@SP
D=M
@5
D=D-A
@ARG
M=D

@SP
D=M
@LCL
M=D

@Sys.main
0;JMP

(RET_Sys.main_2)
// pop temp 1
@6
D=A
@SP
AM=M-1
D=D+M
A=D-M
M=D-A
// label LOOP
(LOOP)
// goto LOOP
@LOOP
0;JMP
// function Sys.main 5
(Sys.main)
@5
D=A

(INIT_ARGS_Sys.main_0)
@AFTER_INIT_ARGS_Sys.main_0
D;JEQ

@SP
M=M+1
A=M-1
M=0
D=D-1
@INIT_ARGS_Sys.main_0
D;JMP
(AFTER_INIT_ARGS_Sys.main_0)

// push constant 4001
@4001
D=A
@SP
M=M+1
A=M-1
M=D
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push constant 5001
@5001
D=A
@SP
M=M+1
A=M-1
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push constant 200
@200
D=A
@SP
M=M+1
A=M-1
M=D
// pop local 1
@1
D=A
@LCL
D=D+M
@SP
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 40
@40
D=A
@SP
M=M+1
A=M-1
M=D
// pop local 2
@2
D=A
@LCL
D=D+M
@SP
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
// pop local 3
@3
D=A
@LCL
D=D+M
@SP
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 123
@123
D=A
@SP
M=M+1
A=M-1
M=D
// call Sys.add12 1
@RET_Sys.add12_3
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

@SP
D=M
@6
D=D-A
@ARG
M=D

@SP
D=M
@LCL
M=D

@Sys.add12
0;JMP

(RET_Sys.add12_3)
// pop temp 0
@5
D=A
@SP
AM=M-1
D=D+M
A=D-M
M=D-A
// push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
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
D=M
@1
A=D-A
D=M
@THAT
M=D

@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

@R14
A=M
0;JMP

// function Sys.add12 0
(Sys.add12)
@0
D=A

(INIT_ARGS_Sys.add12_0)
@AFTER_INIT_ARGS_Sys.add12_0
D;JEQ

@SP
M=M+1
A=M-1
M=0
D=D-1
@INIT_ARGS_Sys.add12_0
D;JMP
(AFTER_INIT_ARGS_Sys.add12_0)

// push constant 4002
@4002
D=A
@SP
M=M+1
A=M-1
M=D
// pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
// push constant 5002
@5002
D=A
@SP
M=M+1
A=M-1
M=D
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
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
// push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D
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
D=M
@1
A=D-A
D=M
@THAT
M=D

@R13
D=M
@2
A=D-A
D=M
@THIS
M=D

@R13
D=M
@3
A=D-A
D=M
@ARG
M=D

@R13
D=M
@4
A=D-A
D=M
@LCL
M=D

@R14
A=M
0;JMP

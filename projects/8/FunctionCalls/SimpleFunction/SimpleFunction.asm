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

// function SimpleFunction.test 2
(SimpleFunction.test)
@2
D=A

(INIT_ARGS_SimpleFunction.test_0)
@AFTER_INIT_ARGS_SimpleFunction.test_0
D;JEQ

@SP
M=M+1
A=M-1
M=0
D=D-1
@INIT_ARGS_SimpleFunction.test_0
D;JMP
(AFTER_INIT_ARGS_SimpleFunction.test_0)

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
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// not
@SP
A=M-1
M=!M
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
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
// push argument 1
@1
D=A
@ARG
A=D+M
D=M
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

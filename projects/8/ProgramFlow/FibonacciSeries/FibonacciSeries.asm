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
// pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D
// pop that 0
@0
D=A
@THAT
D=D+M
@SP
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D
// pop that 1
@1
D=A
@THAT
D=D+M
@SP
AM=M-1
D=D+M
A=D-M
M=D-A
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
// pop argument 0
@0
D=A
@ARG
D=D+M
@SP
AM=M-1
D=D+M
A=D-M
M=D-A
// label LOOP
(LOOP)
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
// if-goto COMPUTE_ELEMENT
@SP
AM=M-1
D=M
@COMPUTE_ELEMENT
D;JNE
// goto END
@END
0;JMP
// label COMPUTE_ELEMENT
(COMPUTE_ELEMENT)
// push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// push that 1
@1
D=A
@THAT
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
// pop that 2
@2
D=A
@THAT
D=D+M
@SP
AM=M-1
D=D+M
A=D-M
M=D-A
// push pointer 1
@THAT
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
// add
@SP
AM=M-1
D=M
A=A-1
M=M+D
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
// pop argument 0
@0
D=A
@ARG
D=D+M
@SP
AM=M-1
D=D+M
A=D-M
M=D-A
// goto LOOP
@LOOP
0;JMP
// label END
(END)
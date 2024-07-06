// push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D
// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUE_CONDITION_1
D;JEQ
D=0 // If no jump, we know the result is false
@LOAD_1
0;JMP
(TRUE_CONDITION_1)
D=-1
(LOAD_1)
@SP
A=M-1
M=D
// push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUE_CONDITION_2
D;JEQ
D=0 // If no jump, we know the result is false
@LOAD_2
0;JMP
(TRUE_CONDITION_2)
D=-1
(LOAD_2)
@SP
A=M-1
M=D
// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D
// eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUE_CONDITION_3
D;JEQ
D=0 // If no jump, we know the result is false
@LOAD_3
0;JMP
(TRUE_CONDITION_3)
D=-1
(LOAD_3)
@SP
A=M-1
M=D
// push constant 892
@892
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 891
@891
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
@TRUE_CONDITION_4
D;JLT
D=0 // If no jump, we know the result is false
@LOAD_4
0;JMP
(TRUE_CONDITION_4)
D=-1
(LOAD_4)
@SP
A=M-1
M=D
// push constant 891
@891
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 892
@892
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
@TRUE_CONDITION_5
D;JLT
D=0 // If no jump, we know the result is false
@LOAD_5
0;JMP
(TRUE_CONDITION_5)
D=-1
(LOAD_5)
@SP
A=M-1
M=D
// push constant 891
@891
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 891
@891
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
@TRUE_CONDITION_6
D;JLT
D=0 // If no jump, we know the result is false
@LOAD_6
0;JMP
(TRUE_CONDITION_6)
D=-1
(LOAD_6)
@SP
A=M-1
M=D
// push constant 32767
@32767
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D
// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUE_CONDITION_7
D;JGT
D=0 // If no jump, we know the result is false
@LOAD_7
0;JMP
(TRUE_CONDITION_7)
D=-1
(LOAD_7)
@SP
A=M-1
M=D
// push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 32767
@32767
D=A
@SP
M=M+1
A=M-1
M=D
// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUE_CONDITION_8
D;JGT
D=0 // If no jump, we know the result is false
@LOAD_8
0;JMP
(TRUE_CONDITION_8)
D=-1
(LOAD_8)
@SP
A=M-1
M=D
// push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D
// gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@TRUE_CONDITION_9
D;JGT
D=0 // If no jump, we know the result is false
@LOAD_9
0;JMP
(TRUE_CONDITION_9)
D=-1
(LOAD_9)
@SP
A=M-1
M=D
// push constant 57
@57
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 53
@53
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
// push constant 112
@112
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
// neg
@SP
A=M-1
M=-M
// and
@SP
AM=M-1
D=M
A=A-1
M=M&D
// push constant 82
@82
D=A
@SP
M=M+1
A=M-1
M=D
// or
@SP
AM=M-1
D=M
A=A-1
M=M|D
// not
@SP
A=M-1
M=!M
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

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 8
@8
D=A
@SP
M=M+1
A=M-1
M=D
// call Class1.set 2
@RET_Class1.set_2
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
@7
D=D-A
@ARG
M=D

@SP
D=M
@LCL
M=D

@Class1.set
0;JMP

(RET_Class1.set_2)
// pop temp 0
@5
D=A
@SP
AM=M-1
D=D+M
A=D-M
M=D-A
// push constant 23
@23
D=A
@SP
M=M+1
A=M-1
M=D
// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
// call Class2.set 2
@RET_Class2.set_3
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
@7
D=D-A
@ARG
M=D

@SP
D=M
@LCL
M=D

@Class2.set
0;JMP

(RET_Class2.set_3)
// pop temp 0
@5
D=A
@SP
AM=M-1
D=D+M
A=D-M
M=D-A
// call Class1.get 0
@RET_Class1.get_4
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

@Class1.get
0;JMP

(RET_Class1.get_4)
// call Class2.get 0
@RET_Class2.get_5
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

@Class2.get
0;JMP

(RET_Class2.get_5)
// label END
(END)
// goto END
@END
0;JMP

// File : Class2.vm //

// function Class2.set 0
(Class2.set)
@0
D=A

(INIT_ARGS_Class2.set_0)
@AFTER_INIT_ARGS_Class2.set_0
D;JEQ

@SP
M=M+1
A=M-1
M=0
D=D-1
@INIT_ARGS_Class2.set_0
D;JMP
(AFTER_INIT_ARGS_Class2.set_0)

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
// pop static 0
@SP
AM=M-1
D=M
@Class2.0
M=D
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
// pop static 1
@SP
AM=M-1
D=M
@Class2.1
M=D
// push constant 0
@0
D=A
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

// function Class2.get 0
(Class2.get)
@0
D=A

(INIT_ARGS_Class2.get_0)
@AFTER_INIT_ARGS_Class2.get_0
D;JEQ

@SP
M=M+1
A=M-1
M=0
D=D-1
@INIT_ARGS_Class2.get_0
D;JMP
(AFTER_INIT_ARGS_Class2.get_0)

// push static 0
@Class2.0
D=M
@SP
M=M+1
A=M-1
M=D
// push static 1
@Class2.1
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


// File : Class1.vm //

// function Class1.set 0
(Class1.set)
@0
D=A

(INIT_ARGS_Class1.set_0)
@AFTER_INIT_ARGS_Class1.set_0
D;JEQ

@SP
M=M+1
A=M-1
M=0
D=D-1
@INIT_ARGS_Class1.set_0
D;JMP
(AFTER_INIT_ARGS_Class1.set_0)

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
// pop static 0
@SP
AM=M-1
D=M
@Class1.0
M=D
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
// pop static 1
@SP
AM=M-1
D=M
@Class1.1
M=D
// push constant 0
@0
D=A
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

// function Class1.get 0
(Class1.get)
@0
D=A

(INIT_ARGS_Class1.get_0)
@AFTER_INIT_ARGS_Class1.get_0
D;JEQ

@SP
M=M+1
A=M-1
M=0
D=D-1
@INIT_ARGS_Class1.get_0
D;JMP
(AFTER_INIT_ARGS_Class1.get_0)

// push static 0
@Class1.0
D=M
@SP
M=M+1
A=M-1
M=D
// push static 1
@Class1.1
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

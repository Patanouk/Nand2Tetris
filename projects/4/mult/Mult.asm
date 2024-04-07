// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.

    // Store the number of times we need to add R0 in i
    @R1
    D=M
    @i
    M=D

    @R2
    M=0

(LOOP)
    // If i = 0, exit loop
    @i
    D=M
    @END
    D;JEQ

    // Add R0
    @R0
    D=M
    @R2
    M=M+D

    // Decrement i
    @i
    M=M-1
    @LOOP
    0;JMP

(END)
    @END
    0;JMP

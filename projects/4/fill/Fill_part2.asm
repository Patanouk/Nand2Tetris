// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

// This is a refresher for Nand2Tetris part2

(INPUT)
    @KBD
    D=M
    @BLACKEN
    D;JNE
    @WHITEN
    D;JEQ

(BLACKEN)
    @color
    M=-1
    @INITLOOP
    0;JMP

(WHITEN)
    @color
    M=0
    @INITLOOP
    0;JMP

(INITLOOP)
    @8192 // Number of memory register for the screen memory
    D=A
    @i
    M=D

(FILL)
    @i
    M=M-1
    D=M
    @SCREEN
    D=A+D
    @addr
    M=D

    @color
    D=M
    @addr
    A=M
    M=D

    @i
    D=M
    @FILL
    D;JNE
    @INPUT
    D;JEQ


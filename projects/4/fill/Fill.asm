// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.

(INPUT)
    // Listen to Keyboard Input
    @KBD
    D=M
    @CLEAR
    D;JEQ
    @BLACKEN
    D;JNE

(BLACKEN)
    // Do not redraw the screen if already black
    @SCREEN
    D=M
    @INPUT
    D-1;JEQ
    // Store 1 in screenColor if should blacken screen
    @screenColor
    M=-1
    @INITLOOP
    0;JMP

(CLEAR)
    // Do not redraw the screen if already cleared
    @SCREEN
    D=M
    @INPUT
    D;JEQ
    // Store 0 in screenColor if should clear screen
    @screenColor
    M=0
    @INITLOOP
    0;JMP

(INITLOOP)
    // Number of screen rows. Used as a loop variable
    @SCREEN
    D=A
    @8191
    D=D+A
    @screenRow
    M=D
    @LOOP
    0;JMP

(LOOP)
    // Darken/clear pixels on current row
    @screenColor
    D=M
    @screenRow
    A=M
    M=D

    // Listen back to input if each row in screen has been drawn
    @screenRow
    D=M
    @SCREEN
    D=D-A
    @INPUT
    D;JEQ

    // Else go to next row to draw
    @screenRow
    M=M-1
    @LOOP
    0;JMP
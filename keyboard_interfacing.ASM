ORG 0000H
START: MOV P1, #0FFH
MOV P2,#3FH
MOV DPTR, #AA
MOV A ,#00H
DD:CLR P1.0
JNB P1.4, DISPLAY
INC A
JNB P1.5 ,BB
INC A
JNB P1.6 ,BB
INC A
JNB P1.7 ,BB
INC A
SETB P1.0
CLR P1.1
JNB P1.4 ,BB
INC A
JNB P1.5 ,BB
INC A
JNB P1.6 ,BB
INC A
JNB P1.7 ,BB
INC A
SETB P1.0
CLR P1.0
JNB P1.4 ,BB
INC A
JNB P1.5 ,BB
INC A
JNB P1.6 ,BB
INC A
JNB P1.7 ,BB
INC A
SETB P1.0
CLR P1.0
JNB P1.4 ,BB
INC A
JNB P1.5 ,BB
INC A
JNB P1.6 ,BB
INC A
JNB P1.7 ,BB
INC A
SETB P1.0
LCALL DD
ORG 0100H
AA: DB 3FH,06H,5BH,4FH,66H,6DH,7DH,07H,7FH,6FH,0F7H,0FCH,0B9H,0DEH,0F9H,0F1H
BB:	MOVC A,@ A+DPTR
MOV P2,A;
END
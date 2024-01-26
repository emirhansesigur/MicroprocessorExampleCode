;faktorial bulma AX'de 
;kacinci faktoriali oldugunu bulacak


org 100h

MOV AX,  6 
MOV BX, AX
ADD BX, -1


devam:
    MUL BX
    ADD BX, -1
    JNZ devam

HLT
    
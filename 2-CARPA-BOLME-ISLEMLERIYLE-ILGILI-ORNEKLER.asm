org 100h

;CARPA, ISARETLI CARPMA, BOLME ISLEMLERIYLE ILGILI ORNEKLER


MOV AX, 200H
MOV DX, 300H
MUL BX


MOV AL, -1
MOV DL, -2
IMUL DL

MOV AL,10h ; AL = 10h
MOV CL,13h ; CL = 13h
IMUL CL    ; AX = 0130h


       
MOV AX,0100h ; AX = 0100h
MOV BX,1234h ; BX = 1234h
IMUL BX ; DX = 0012h
        ; AX = 3400h       



MOV AX, 407H
MOV DL, 10H       
DIV DL       ;AL = 40H, AH=7H

mov DX, 0001H
mov AX, 0ABCDH  
mov CX, 01000H 
div CX  ;AX = 1H, DX = 0ABCDH



HLT

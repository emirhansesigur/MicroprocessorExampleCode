; 1 den 5 e - 1 den 4 e - 1 den 3 e - 1 den 2 ye ve son 1 yazdiran program

org 100h

MOV BX, 300H
MOV AL, 5
MOV SI, 0
MOV AH, 0
MOV CH, 1 ;0 degil 1 yapmak onemli
  
  
  
yaz:  
    mov ah,al

    mov [bx+si], ch
    inc ch
    inc si
    cmp ch, ah    ;
    jbe yaz
    jmp azalt
    

azalt:
    dec al
    mov ch, 1
    jnz yaz
    hlt







MOV BX,0200H
MOV BYTE PTR [bx],55h
MOV BYTE PTR [bx+1],66H
MOV BYTE PTR [bx+2],54H
MOV BYTE PTR [bx+3],11H
MOV BYTE PTR [bx+4],87H
MOV BYTE PTR [bx+5],33H
MOV BYTE PTR [bx+6],75H
MOV BYTE PTR [bx+7],05H
MOV BYTE PTR [bx+8],5FH
MOV BYTE PTR [bx+9],23H

;  en kucuk elemani tutacak ve onu indexini de tutacak kod
org 100h

MOV SI, 1 ; sayac

MOV DL, [BX] ; EN KUCUK SAYI
MOV DH, 00   ; INDEXI

J1:           
    MOV AX, [BX+SI]  ;donduguuz yeni sayimiz
    CMP DL, AL       ;karsilastir
         
    JBE Devam        ;Kucuk degilse
    ;degistir
    MOV DL, AL    ;KUCUK SAYI GUNCELLE
    MOV CX, SI   ;ara gecis
    MOV DH, CL   ;index guncelle

Devam:
    INC SI
    CMP SI, 10
    JNZ J1


HLT    
    
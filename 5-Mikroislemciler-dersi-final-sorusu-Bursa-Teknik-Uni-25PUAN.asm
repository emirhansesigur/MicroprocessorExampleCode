org 100h
; ---SORU---

;Alttaki sayilar RAM'de yer  aliyor.
;Bu sayilar 200 degerinden buyukse AX registerindeki sayilar 1 ya da 0 degerini alacak
;Kural -> [BX] 200 den buyukse AX in en degersiz biti 1
; -> [BX+1] 200 den kucukse AX in en degersiz bitinin hemen solundaki bit 0
; -> [BX+2] 200 den kucukse AX in en degersiz bitinin 2 solundaki bit 0
; -> [BX+15] 200 den buyukse AX in en degerli biti 1 olacak 

MOV BX, 300H

MOV [BX], 201
MOV [BX+1], 101
MOV [BX+2], 201
MOV [BX+3], 103

MOV [BX+4], 201
MOV [BX+5], 201
MOV [BX+6], 201
MOV [BX+7], 201

MOV [BX+8], 201
MOV [BX+9], 201
MOV [BX+10], 110
MOV [BX+11], 111

MOV [BX+12], 201
MOV [BX+13], 113
MOV [BX+14], 201
MOV [BX+15], 1000



MOV SI, 15


X:
    MOV DH,[BX+SI]   
    CMP DH,200
    JA BIREKLE
    
    ;0 basacagiz
    SHL AX, 1      ;sadece saga kaydir
    
    DEC SI
    CMP SI, -1
    JNZ X
    JMP BITIR
    
 
BIREKLE:
    SHL AX, 1  ;ilk saga kaydir
    ADD AX,1   ;sonra 1 ekle
    DEC SI
    CMP SI, -1
    JNZ X
    JMP BITIR
    
BITIR:
    HLT     
   


















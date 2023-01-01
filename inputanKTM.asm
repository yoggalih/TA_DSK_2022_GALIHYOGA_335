.MODEL SMALL
.CODE

ORG 100H

  AWAL:
    JMP PROSES
    KAL0 DB 'MASUKKAN DATA ANDA. $'
    KAL1 DB 13,10,'MASUKKAN NIM     : $'
    KAL2 DB 13,10,'MASUKKAN NAMA    : $'
    KAL3 DB 13,10,'MASUKKAN JURUSAN : $'
    KAL4 DB 13,10,'BERIKUT INI DATA ANDA. $'
    KALX DB 13,10,'$'
    NAMA DB 40,?,40 DUP <?>
    NIM DB 40,?,40 DUP <?>
    JURUSAN DB 40,?,40 DUP <?>
    
  PROSES:
    ;CETAK AWALAN
    MOV AH,09H
    MOV DX,OFFSET KAL0
    INT 21H
    
    ;CETAK KAL1
    MOV DX,OFFSET KAL1
    INT 21H
    
    ;INPUT NIM
    MOV AH,0AH
    LEA DX,NIM
    INT 21H
    
    
    ;CETAK KAL2
    MOV AH,09H
    MOV DX,OFFSET KAL2
    INT 21H
    
    ;INPUT NAMA
    MOV AH,0AH
    LEA DX,NAMA
    INT 21H
    
    ;CETAK KAL3
    MOV AH,09H
    MOV DX,OFFSET KAL3
    INT 21H
    
    ;INPUT JURUSAN
    MOV AH,0AH
    LEA DX,JURUSAN
    INT 21H
    
    ;CETAK KAL4
    MOV AH,09H
    MOV DX,OFFSET KALX
    INT 21H
    MOV DX,OFFSET KAL4
    INT 21H
    
OUTPUT_NIM:
           MOV AX,09H
           MOV DX,OFFSET KAL1
           INT 21H
           MOV BX,OFFSET NIM+2
CETAK_NIM: 
            MOV DL,[BX]
            CMP DL,0DH
            JE OUTPUT_NAMA
            MOV AH,02H
            INT 21H
            INC BX
            JMP CETAK_NIM
            
OUTPUT_NAMA:
            MOV AH,09H
            MOV DX,OFFSET KAL2
            INT 21H
            MOV BX,OFFSET NAMA+2
            
CETAK_NAMA:
            MOV DL,[BX]
            CMP DL,0DH
            JE OUTPUT_JURUSAN
            MOV AH,02H
            INT 21H
            INC BX
            JMP CETAK_NAMA
            
OUTPUT_JURUSAN:
            MOV AH,09H
            MOV DX,OFFSET KAL3
            INT 21H
            MOV BX,OFFSET JURUSAN+2
            
CETAK_JURUSAN:
            MOV DL,[BX]
            CMP DL,0DH
            JE SELESAI
            MOV AH,02H
            INT 21H
            INC BX
            JMP CETAK_JURUSAN
            
SELESAI:
            INT 20H
            
END AWAL
    
      
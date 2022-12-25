.Model Small
.Code
Org 100h

TData:
JMP Prosses 
Nama DB               "Nama: Galih Yoga$"
Nim DB   0DH,0AH, "Nim      : 2200018335$"
Hobi DB   0DH,0AH, "Hobi    : Futsal$"
Nope DB         0DH,0AH, "No: 0899999999999$"
Fb DB    0DH,0AH, "FB       : Galih Yoga$"
Umur DB   0DH,0AH, "Umur    : 10Tahun$"
Alamat DB   0DH,0AH, "Alamat: Klaten$"
Ttl DB    0DH,0AH, "TTL     : Klaten"
Ig DB    0DH,0AH, "IG       : yoggalih_$"
Email DB   0DH,0AH, "Email  : adadeh@gmail.com$"

Prosses:
MOV AH,9H
LEA DX,Nama 
INT 21H
LEA DX,Nim
INT 21H
LEA DX,Hobi
INT 21H
LEA DX,Nope
INT 21H
LEA DX,Fb

INT 21H
LEA DX,Umur
INT 21H
LEA DX,Alamat
INT 21H
LEA DX,Ttl
INT 21H
LEA DX,Ig
INT 21H
LEA DX,Email
INT 21H
INT 20H
END TData

INCLUDE Irvine32.inc

.data


map byte 40 dup (50 dup(?))
wall byte "��",0					;dl = x�b  dh = y�b
space byte "  ",0
right_start byte 798 dup(0)
left_start byte 198 dup(0)
space1 byte "��",0 
right_body byte "��",0   ;�k��O�l
left_body byte "��",0       ;����O�l
pongball byte 142 dup(0) ; �y���_�I
pongball_body byte "��",0
;yes bytr "y",0
;no byte "n",0
left_Y byte  5                      ;�O�l�_�l�y�� X=2    Y= 5~9
Right_Y byte 5
divisor byte 1
x byte 0
y byte 0
ylast byte 0
speed dword 150
random1 byte 0
random2 byte 0
random3 byte 0
random4 byte 0
nodie byte 0
boss_body byte "��",0
score byte 0
scr db"�A���\���u��",0
scr2 db"������!!",0
flag byte 0
color byte 0
color1 byte 0
color2 byte 0
temp byte 0
jump byte 0
ballcolor byte 15
time byte 0
direction byte 4bh
str1 db "���X�ӭt!!",0
mode1 db "��1��ܬG�ƼҦ�",0Dh,0Ah
mode2 db "��2��������Ҧ�",0Dh,0Ah,0
choose db "��",0
									;��J���W�U���k���OŪ�iah  �W:48 �U:50 ��:4b �k:4d



A db "����������������������������������������������������������������������������������������",0Dh,0Ah
B db "����������������������������������������������������������������������������������������",0Dh,0Ah
z db "����������������������������������������������������������������������������������������",0Dh,0Ah
d db "����������������������������������������������������������������������������������������",0Dh,0Ah
e db "����������������������������������������������������������������������������������������",0Dh,0Ah
f db "����������������������������������������������������������������������������������������",0Dh,0Ah
g db "����������������������������������������������������������������������������������������",0Dh,0Ah
h db "����������������������������������������������������������������������������������������",0Dh,0Ah
i db "����������������������������������������������������������������������������������������",0Dh,0Ah
j db "����������������������������������������������������������������������������������������",0Dh,0Ah
k db "����������������������������������������������������������������������������������������",0Dh,0Ah
l db "����������������������������������������������������������������������������������������",0Dh,0Ah
m db "����������������������������������������������������������������������������������������",0Dh,0Ah
n db "����������������������������������������������������������������������������������������",0Dh,0Ah
o db "����������������������������������������������������������������������������������������",0Dh,0Ah
p db "����������������������������������������������������������������������������������������",0Dh,0Ah
q db "����������������������������������������������������������������������������������������",0Dh,0Ah
r db "����������������������������������������������������������������������������������������",0Dh,0Ah,0


P1 db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah 
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah,0

P2 db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah 
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah
   db "������������������������������������������������������������������������������",0Dh,0Ah,0Dh,0Ah,0



P3 db "������������������������������������������������������������������������������������������������������������������������"
   db "������������������������������������������������������������������������������������������������������������������������"
   db "������������������������������������������������������������������������������������������������������������������������"
   db "������������������������������������������������������������������������������������������������������������������������"
   db "������������������������������������������������������������������������������������������������������������������������"
   db "������������������������������������������������������������������������������������������������������������������������"
   db "������������������������������������������������������������������������������������������������������������������������"
   db "������������������������������������������������������������������������������������������������������������������������"
   db "������������������������������������������������������������������������������������������������������������������������"
   db "������������������������������������������������������������������������������������������������������������������������"
   db "������������������������������������������������������������������������������������������������������������������������"
   db "������������������������������������������������������������������������������������������������������������������������"
   db "������������������������������������������������������������������������������������������������������������������������"
   db "������������������������������������������������������������������������������������������������������������������������",0Dh,0Ah,0


 P5 db"                                                                                      "
    db"                                                                                      "
	db"                                                                                      ",0Dh,0Ah,0

P6  db"����������������������������������������������������������������������������������������������������",0Dh,0Ah,0





.code
main proc


call menu


;call build
;call produce
;call move





exit
main endp




;==================���====================

menu proc




	mov edx,offset A
    call WriteString
	mov edx,offset mode1
    call WriteString
	;��ܼҦ�

	onetwo:
		call readChar
	.If al=='1'         ;�G�ƼҦ�
		call Clrscr
		call build
        call producestory
		call story





	.ElseIf al=='2'
		call Clrscr
		call build
        call produce
		call move
	.ElseIf al=='a'
	   mov nodie,1
		call Clrscr
		call build
        call producestory
		call story

	
	.ENDIF

	.If al!='1'
    .IF al!='2'
	.IF al!='a'
	    jmp onetwo
	.ENDIF
	.ENDIF
	.ENDIF





















menu endp



;==================================�إ����=========================================
build proc

mov ecx,100
mov esi,0
mov eax,0

up:
cmp al,00010011b
jz down
mov map[esi],1
inc al
jmp finish_up
down:
.IF esi==50d
	mov esi,1000d
.endif
mov map[esi],1

finish_up:
inc esi
loop up

;=======================�ا��W�U================================


MOV ECX,1050
mov eax,0
mov esi,0
mov ebx,1

L1:

mov al,map[esi]
.if al==1
mov edx,offset wall
call writestring
.else
mov dl,1
mov dh,4
mov edx,offset space
call writestring

call gotoxy
.endif


.if bl==50
mov bl,0
call crlf
.endif


inc bl
inc esi

LOOP L1

mov ecx,1000             
mov esi,0
mov eax,0
mov ebx,1


ret
build endp
;==============================�L�X���====================================


;============================���k�O�l����==================================
produce proc

mov esi,0
mov ecx,5
mov eax,0
mov al,101

left:
     mov left_start[esi],al
	 inc esi
	 mov map[eax],1

	 add al,20
loop left

 mov esi,0
 mov ecx,5
 mov eax,0
 mov ebx,20
 mov bh,2
 output_left:
   mov al,left_start[esi]

   and ax,0ffh
   div bl
   mov dh,al

   mov al,ah
   mul bh
   mov dl,al


   call gotoxy
   mov  color1,9
  
   mov edx,offset left_body
   mov al,color1
   call settextcolor
   call writestring
   inc esi
   
 loop output_left

 mov dh,13
 mov dl,0
 call gotoxy
 
 
 ;=================�k��O�l ����

  mov esi,0
 mov ecx,5
 mov eax,0
 mov al,119

right:
     mov right_start[esi],al
	 inc esi
	 mov map[eax],1

	 add al,20
loop right

 mov esi,0
 mov ecx,5
 mov eax,0
 mov ebx,20
 mov bh,5
 output_right:
   mov al,right_start[esi]

   and ax,0ffh
   div bl
   mov dh,al

   mov al,ah
   mul bh
   mov dl,al


   call gotoxy
    mov color2,12
   mov edx,offset right_body
   mov al,color2
   call settextcolor
   call writestring
   inc esi
   
 loop output_right

  
 mov dh,13
 mov dl,0
 call gotoxy
 ret 

 produce endp

 
;=============================�O�l����=========================================

move PROC
mov edi,0
mov edi,203

;left_Y  ���䪩�̤W���m  +1 +2 +3 +4

;�ݭn2�ܼ� DL +-2  DH+-3
;====================================�y���ŧi
    mov eax,2
    call delay
    call Randomize   ;�����ܼ� 
    mov al,3
    call RandomRange
	div divisor
	mov random1,al   ;���ܼƵ�R1
	add random1,1

	mov eax,3
    call delay
    call Randomize   ;�����ܼ� 
    mov al,1
    call RandomRange
	mov random2,al
	add random2,1

	mov eax,10
    call delay
	call Randomize
	mov al,4
	call RandomRange
	mov random3,al
	;call DumpRegs
	.IF random3==3               ;���|�Ӥ��]
	.elseif random3==2
	neg random2
	.elseif random3==1
	neg random1
		mov jump,1
	.elseif random3==0
	neg random1
	neg random2
	mov jump,1
	.Endif


	mov x,50
	mov y,10
	;==================�y���ŧi


		
L1:   ; �ΨӰʥ���

;==================================�y���j��
mov eax,speed
    call delay
	mov cl,Right_Y     ;�O�l�Ĥ@�Ӧ�m
	movzx ebx,left_Y

	
	mov dl,x
    mov dh,y

	call gotoxy
	mov edx,offset space
    call WriteString

	mov dl,x
    mov dh,y

	add dl,random1
	add dh,random2
	

	mov temp,al


	mov x,dl
	mov y,dh
    call gotoxy
	mov edx,offset pongball_body
	mov al,ballcolor
	call settextcolor
    call WriteString



	mov al,temp
	
	.IF y==19     ;�I�U�ϼu==========================================
	 neg random2




	  .ENDIF

	.IF y==1  ;�I�W�ϼu==========================================
	 neg random2




	 .ENDIF
	 
	 sub cl,1

	.IF y>=cl      ;�P�_�k��     �I���O�l
	  add cl,6
	   .IF y<=cl
	   .IF x>=91

	   .IF jump==0
	    neg random1
		add jump,1
		sub speed,12
		.ENDIF

		.ENDIF
		.ENDIF
		.ENDIF

		sub bl,1
		
	.IF y>=bl     ;�P�_����   
	  add bl,6
	   .IF y<=bl
	   .IF x<=5

	   .IF jump==1
	    neg random1
		sub jump,1
		sub speed,12
		.ENDIF

		.ENDIF
		.ENDIF
		.ENDIF
		;call dumpregs

			
	.IF x<=2  ;���䵲��
	mov edx,offset str1
	call WriteString
	call Clrscr
   
	call rightwin
	
    exit

	.ENDIF

	.IF x>=95  ;�k�䵲��
	mov edx,offset str1
	call WriteString
	call Clrscr
	
	call leftwin
	
	exit
	.ENDIF
	
	;=======================================�y���j��


call readKey

.IF ah==4dh
	sub left_Y,1

	.IF  left_Y==0
	add left_Y,1
	.ENDIF

	mov dh,left_Y
    mov dl,2
	call gotoxy
	
	mov edx,3
	mov eax,3
	mov edx,offset left_body

	mov al,color1
   call settextcolor
	call WriteString

	mov dh,left_Y
	add dh,5
	mov dl,2
	call gotoxy
	mov edx,offset space

	call WriteString

.ELSEIF ah==4bh
    add left_Y,4
	add left_Y,1
	.IF  left_Y==20
	sub left_Y,1
	.ENDIF

	mov dh,left_Y
    mov dl,2
	call gotoxy
		mov edx,3
	mov eax,3
	mov edx,offset left_body

    mov al,color1   
    call settextcolor
	call WriteString
	
	mov dh,left_Y
	sub left_Y,4
	sub dh,5
	mov dl,2
	call gotoxy
	mov edx,offset space
	call WriteString
	;==========================================P2
	.ELSEIF ah==48h

		sub Right_Y,1

	.IF  Right_Y==0
	add Right_Y,1
	.ENDIF

	mov dh,Right_Y
    mov dl,95
	call gotoxy
		mov edx,3
	mov eax,3
	mov edx,offset right_body

    mov al,color2
    call settextcolor
    call WriteString

	mov dh,Right_Y
	add dh,5
	mov dl,95
	call gotoxy
	mov edx,offset space
	call WriteString

	.ELSEIF ah==50h

	add Right_Y,4
	add Right_Y,1
	.IF  Right_Y==20
	sub Right_Y,1
	.ENDIF

	mov dh,Right_Y
    mov dl,95
	call gotoxy
		mov edx,3
	mov eax,3
	mov edx,offset right_body

	mov al,color2   
    call settextcolor
	call WriteString

	mov dh,Right_Y
	sub Right_Y,4
	sub dh,5
	mov dl,95
	call gotoxy
	mov edx,offset space
	call WriteString

.ENDIF


jmp L1




move ENDP


;==========================�y============================



;=========================STORY MODE=====================================================================================


story proc

mov edi,0
mov edi,203

;left_Y  ���䪩�̤W���m  +1 +2 +3 +4

;�ݭn2�ܼ� DL +-2  DH+-3
;====================================�y���ŧi
    mov eax,2
    call delay
    call Randomize   ;�����ܼ� 
    mov al,4
    call RandomRange
	div divisor
	mov random1,al   ;���ܼƵ�R1
	add random1,1

	mov eax,3
    call delay
    call Randomize   ;�����ܼ� 
    mov al,1
    call RandomRange
	mov random2,al
	add random2,1

	mov eax,1
    call delay
	call Randomize
	mov al,4
	call RandomRange
	mov random3,al
	;call DumpRegs
	.IF random3==3               ;���|�Ӥ��]
	.elseif random3==2
	neg random2
	.elseif random3==1
	neg random1
		mov jump,1
	.elseif random3==0
	neg random1
	neg random2
	mov jump,1
	.Endif

	mov x,50
	mov y,10
	;==================�y���ŧi


		mov speed,150
L1:   ; �ΨӰʥ���

;==================================�y���j��

mov eax,speed
    call delay
	mov cl,Right_Y     ;�O�l�Ĥ@�Ӧ�m
	movzx ebx,left_Y

	

	mov dl,x
    mov dh,y

	call gotoxy
	mov edx,offset space
	   mov eax,15
    call SetTextColor
    call WriteString


		mov dl,0
	mov dh,21
	    call gotoxy
	mov edx,offset p5
	 call WriteString

	 		mov dl,0
	mov dh,0
	    call gotoxy
	mov edx,offset p6
	 call WriteString

		mov dl,0
	mov dh,20
	    call gotoxy
	mov edx,offset p6
	 call WriteString




	mov dl,x
    mov dh,y

	mov  ylast,dh               ;=====================================NPC���h��
	add dl,random1
	add dh,random2
	
	
	mov x,dl
	mov y,dh
    call gotoxy
	mov edx,offset pongball_body

    call WriteString
	
	.IF y>=19     ;�I�U�ϼu==========================================
	 neg random2
	 mov y,19



	  .ENDIF

	.IF y<=1  ;�I�W�ϼu==========================================
	 neg random2
	 mov y,1



	 .ENDIF
	 


	 .IF nodie==0
;============================================��ת��a	 
	 sub cl,1
	.IF y>=cl      ;�P�_�k��     �I���O�l
	  add cl,6
	   .IF y<=cl
	   .IF x>=88
	   .IF jump==0
	    neg random1
		add jump,1
		mov speed,75
		.ENDIF
		.ENDIF
		.ENDIF
		.ENDIF
;============================================��ת��a

      .ELSEIF nodie==1
;============================================�����~��
	.IF y>=0      ;�P�_�k��     �I���O�l

	   .IF y<=21
	   .IF x>=88                ;===========�QĹ�N�ק�ڧa
	   .IF jump==0
	    neg random1
		add jump,1
		mov speed,50
		.ENDIF
		.ENDIF
		.ENDIF
		.ENDIF
;==============================================�����~��
		.ENDIF
		
	.IF y>=0     ;�P�_����     NPC����
	  add bl,4
	   .IF y<=20
	   .IF x<=6
	    mov speed,20
	    neg random1
		mov jump,0




		.IF random1==1

		mov random1,3
		mov random2,2

		.ElseIF random1==2

		mov random1,5
		mov random2,0     

		.ElseIF random1==3

		mov random1,4
		add random1,3
		mov random2,1

		.ElseIF random1==4
		mov random1,2
		mov random2,3

		.ElseIF random1==5
		mov random1,3
		mov random2,1

		.ElseIF random1==7
		mov random1,4
		mov random2,3

		.ENDIF
		.ENDIF
		.ENDIF
		.ENDIF
		;call dumpregs

			
	.IF x<=2  ;���䵲��
	mov edx,offset str1
	call WriteString
	ret
	.ENDIF

	.IF x>=95  ;�k�䵲��
	mov edx,offset str1
	call WriteString
	call Clrscr
	call storywin
	ret
	.ENDIF
	;=======================================�y���j��


call readKey


	.IF ah==48h

		sub Right_Y,1

	.IF  Right_Y==0
	add Right_Y,1
	.ENDIF

	mov dh,Right_Y
    mov dl,95
	call gotoxy
	mov edx,offset right_body
	call WriteString
	
	mov dh,Right_Y
	add dh,5
	mov dl,95
	call gotoxy
	mov edx,offset space
	call WriteString

	.ELSEIF ah==50h

	add Right_Y,4
	add Right_Y,1
	.IF  Right_Y==20
	sub Right_Y,1
	.ENDIF

	mov dh,Right_Y
    mov dl,95
	call gotoxy
	mov edx,offset right_body
	call WriteString
	
	mov dh,Right_Y
	sub Right_Y,4
	sub dh,5
	mov dl,95
	call gotoxy
	mov edx,offset space
	call WriteString

.ENDIF

;================NPC�إ�

;Random4 ��X�C��
    mov eax,5
    call delay
    call Randomize   ;�����ܼ� 
    mov al,15
    call RandomRange
	div divisor
	mov random4,al   ;���ܼƵ�R1
	add random4,1




	mov dh,ylast
	mov dl,2
    call gotoxy
	mov edx,offset space
    call WriteString



	
	mov dh,y
	mov dl,2
    call gotoxy
	mov edx,offset boss_body
	mov  al,random4
	call SetTextColor
    call WriteString




jmp L1




Story endp



;============================�k�O�l����==================================
producestory proc


 

 mov esi,0
mov ecx,5
mov eax,0
mov al,119

right:
     mov right_start[esi],al
	 inc esi
	 mov map[eax],1

	 add al,20
loop right

 mov esi,0
 mov ecx,5
 mov eax,0
 mov ebx,20
 mov bh,5
 output_right:
   mov al,right_start[esi]

   and ax,0ffh
   div bl
   mov dh,al

   mov al,ah
   mul bh
   mov dl,al


   call gotoxy
   mov edx,offset right_body


   call writestring
   inc esi
   
 loop output_right

 mov dh,13
 mov dl,0
 call gotoxy
 ret 


 producestory endp


 ;=======================���赲��=========================

rightwin proc
    mov edx,offset P1
	mov eax,12
	call SetTextColoR
    call WriteString
	call waitmsg
	ret
rightwin endp

;=======================�Ť赲��==================


leftwin proc
    mov edx,offset P2
	mov eax,9
	call SetTextColoR
    call WriteString
	call waitmsg
	ret
leftwin endp

;=======================�G�ƼҦ�����===============

storywin proc
    
	
	
	
    mov edx,offset P3
	mov color,12
	mov  time,255
	
	mov ecx,3
	s:
	mov  al,color
	call SetTextColoR
    call WriteString
	mov  al,time
	call delay
	call delay
	call Clrscr
	call delay
	call delay
	loop s

	mov dl,1
	mov dh,1
	call gotoxy
		call waitmsg
	exit
storywin endp   

;================�~��C��============

end main
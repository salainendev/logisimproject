asect 0x00
# r1 - addres нужной ячейки чтобы его получить надо отнять последний р2
# r0 - значение соседа r2 - вспомогательный для адресов прибасление
# r3 - сумма значений соседей
#по часовой проверяем соседей клетки

do	
do
	ldi r2,-16
	add r2,r1
	ld r1,r0
	add r0,r3 # верхинй
	ldi r2,1
	add r2,r1
	ld r1,r0
	add r0,r3 # верхний правый
	ldi r2,14
	add r2,r1
	ld r1,r0
	add r0,r3 # верхний левый
	ldi r2, 16
	add r2, r1
	ld r1, r0
	add r0, r3
	ldi r2, 16
	add r2, r1
	ld r1, r0
	add r0, r3
	ldi r2, -15
	add r2, r1
	ld r1, r0
	add r0, r3
	ldi r2, 1
	add r2, r1
	ld r1, r0
	add r0, r3
	ldi r2, -16
	add r2, r1
	ld r1, r0
	add r0, r3
	dec r1
	ldi r2,3
	if
		cmp r3,r2
		is eq
		ldi r2,1
		st r1,r2
		else
		ld r1,r0
		if
			tst r0
			is ne
			ldi r2,2
			if
			cmp r2,r3
			is eq
			ldi r2,1
			st r1,r2
	fi
	else
		ldi r2,0
		st r1,r2
	
	fi
	fi
	ldi r2,16
	add r2,r1	
	tst r1
until z
## правая граница
ldi r1, 0x0F
do
	
	#ld r1,r0 #0
	ldi r2,-16
	add r2,r1
	ld r1,r0
	add r0,r3 # верхинй
	ldi r2,-15
	add r2,r1
	ld r1,r0
	add r0,r3 # верхний правый
	ldi r2,14
	add r2,r1
	ld r1,r0
	add r0,r3 # верхний левый
	ldi r2, 16
	add r2, r1
	ld r1, r0
	add r0, r3
	ldi r2, 16
	add r2, r1
	ld r1, r0
	add r0, r3
	ldi r2, 1
	add r2, r1
	ld r1, r0
	add r0, r3
	ldi r2, -15
	add r2, r1
	ld r1, r0
	add r0, r3
	ldi r2, -16
	add r2, r1
	ld r1, r0
	add r0, r3
	ldi r2,15
	add r2,r1
	
	ldi r2,3
	if
	cmp r3,r2
	is eq
	ldi r2,1
	st r1,r2
	else
	ld r1,r0
	if
	tst r0
	is ne
	ldi r2,2
	if
	cmp r2,r3
	is eq
	ldi r2,1
	st r1,r2
	fi
	else
	ldi r2,0
	st r1,r2
	
	fi
	fi
	ldi r2,16
	add r2,r1
	ldi r2,15
	cmp r1,r2
until eq
## стандартный
ldi r1, 0x00
#ld r1,r0 #0
do
ldi r2,-16
add r2,r1
ld r1,r0
add r0,r3 # верхинй
ldi r2,1
add r2,r1
ld r1,r0
add r0,r3 # верхний правый
ldi r2,16
add r2,r1
ld r1,r0
add r0,r3 # верхний левый
add r2, r1
ld r1, r0
add r0, r3
dec r1
ld r1, r0
add r0, r3
dec r1
ld r1, r0
add r0, r3
ldi r2, -16
add r2, r1
ld r1, r0
add r0, r3
add r2, r1
ld r1, r0
add r0, r3
ldi r2,17
add r2,r1
ldi r2,3
if
cmp r3,r2
is eq
ldi r2,1
st r1,r2
else
ld r1,r0
if
tst r0
is ne
ldi r2,2
if
cmp r2,r3
is eq
ldi r2,1
st r1,r2
fi
else
ldi r2,0
st r1,r2

fi
fi
inc r1
tst r1
until z 
ldi r2,228
tst r2
until z
		


halt
end
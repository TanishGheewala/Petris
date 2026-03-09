.data
	.align 2
alignment:
	.word 0
	.align 4
temp_board:
	.space 252
board_left:
	.byte 0x08, 0x00, 0x00, 0x00
board_right:
	.byte 0x00, 0x00, 0x00, 0x08
	.align 1
character_picker:
	.ascii " "
	.ascii "#"
	.ascii "#"
	.ascii "#"
	.ascii "#"
	.ascii "#"
	.ascii "#"
	.ascii "#"
	.ascii "+" # Borders
	.ascii "\n"
	.align 4
random:
	.space 256
random_one:
	.word 0
random_two:
	.word 0
random_key:
	.space 256
	.align 1
board_display:
	.space 4096
	.align 4
nPiece:
	.word 0
cPiece:
	.word 0
pPiece:
	.word 0

global_array: # Global Piece Array
piece_1a:
	.byte 0, 0, 0, 0
	.byte 1, 1, 1, 1
	.byte 0, 0, 0, 1
	.byte 0, 0, 0, 0
piece_1b:
	.byte 0, 0, 0, 0
	.byte 1, 1, 1, 1
	.byte 0, 0, 0, 1
	.byte 0, 0, 0, 0
piece_1c:
	.byte 0, 0, 0, 0
	.byte 1, 1, 1, 1
	.byte 0, 0, 0, 1
	.byte 0, 0, 0, 0
piece_1d:
	.byte 0, 0, 0, 0
	.byte 1, 1, 1, 1
	.byte 0, 0, 0, 1
	.byte 0, 0, 0, 0
piece_2a:
	.byte 0, 0, 0, 0
	.byte 1, 1, 1, 0
	.byte 0, 0, 1, 0
	.byte 0, 0, 1, 0
piece_2b:
	.byte 0, 0, 0, 0
	.byte 1, 1, 1, 0
	.byte 0, 0, 1, 0
	.byte 0, 0, 1, 0
piece_2c:
	.byte 0, 0, 0, 0
	.byte 1, 1, 1, 0
	.byte 0, 0, 1, 0
	.byte 0, 0, 1, 0
piece_2d:
	.byte 0, 0, 0, 0
	.byte 1, 1, 1, 0
	.byte 0, 0, 1, 0
	.byte 0, 0, 1, 0
piece_3a:
	.byte 0, 0, 0, 0
	.byte 1, 1, 1, 0
	.byte 0, 1, 0, 0
	.byte 0, 1, 0, 0
piece_3b:
	.byte 0, 0, 0, 0
	.byte 1, 1, 1, 0
	.byte 0, 1, 0, 0
	.byte 0, 1, 0, 0
piece_3c:
	.byte 0, 0, 0, 0
	.byte 1, 1, 1, 0
	.byte 0, 1, 0, 0
	.byte 0, 1, 0, 0
piece_3d:
	.byte 0, 0, 0, 0
	.byte 1, 1, 1, 0
	.byte 0, 1, 0, 0
	.byte 0, 1, 0, 0
piece_4a:
	.byte 0, 0, 0, 0
	.byte 0, 1, 1, 0
	.byte 1, 1, 0, 0
	.byte 0, 1, 0, 0
piece_4b:
	.byte 0, 0, 0, 0
	.byte 0, 1, 1, 0
	.byte 1, 1, 0, 0
	.byte 0, 1, 0, 0
piece_4c:
	.byte 0, 0, 0, 0
	.byte 0, 1, 1, 0
	.byte 1, 1, 0, 0
	.byte 0, 1, 0, 0
piece_4d:
	.byte 0, 0, 0, 0
	.byte 0, 1, 1, 0
	.byte 1, 1, 0, 0
	.byte 0, 1, 0, 0
piece_5a:
	.byte 1, 0, 0, 0
	.byte 1, 1, 0, 0
	.byte 0, 1, 1, 0
	.byte 0, 0, 0, 0
piece_5b:
	.byte 1, 0, 0, 0
	.byte 1, 1, 0, 0
	.byte 0, 1, 1, 0
	.byte 0, 0, 0, 0
piece_5c:
	.byte 1, 0, 0, 0
	.byte 1, 1, 0, 0
	.byte 0, 1, 1, 0
	.byte 0, 0, 0, 0
piece_5d:
	.byte 1, 0, 0, 0
	.byte 1, 1, 0, 0
	.byte 0, 1, 1, 0
	.byte 0, 0, 0, 0
piece_6a:
	.byte 0, 0, 0, 0
	.byte 0, 1, 0, 0
	.byte 1, 1, 1, 0
	.byte 0, 1, 0, 0
piece_6b:
	.byte 0, 0, 0, 0
	.byte 0, 1, 0, 0
	.byte 1, 1, 1, 0
	.byte 0, 1, 0, 0
piece_6c:
	.byte 0, 0, 0, 0
	.byte 0, 1, 0, 0
	.byte 1, 1, 1, 0
	.byte 0, 1, 0, 0
piece_6d:
	.byte 0, 0, 0, 0
	.byte 0, 1, 0, 0
	.byte 1, 1, 1, 0
	.byte 0, 1, 0, 0
piece_7a:
	.byte 0, 0, 0, 0
	.byte 0, 1, 1, 0
	.byte 0, 1, 0, 0
	.byte 1, 1, 0, 0
piece_7b:
	.byte 0, 0, 0, 0
	.byte 0, 1, 1, 0
	.byte 0, 1, 0, 0
	.byte 1, 1, 0, 0
piece_7c:
	.byte 0, 0, 0, 0
	.byte 0, 1, 1, 0
	.byte 0, 1, 0, 0
	.byte 1, 1, 0, 0
piece_7d:
	.byte 0, 0, 0, 0
	.byte 0, 1, 1, 0
	.byte 0, 1, 0, 0
	.byte 1, 1, 0, 0

game_start:
	.asciiz "Please Expand your I/O Area and Press Enter\n"
game_score:
	.asciiz "Score:"
game_game:
	.asciiz "\n"
str_game_over_output:
	.asciiz "Game Over\n"
	.align 4
grid: 
	.space 252

	.text
	.globl main

main:
# Basic Initializations
	addi $sp, $sp, -4
	sw $ra, ($sp)
	la $a0, game_start
	li $v0, 4
	syscall
	la $a0, random_key
	li $a1, 256
	li $v0, 8
	syscall
	jal global_random
	jal board_printer
	sw $zero, alignment
	jal global_array_generator
	jal global_array_generator
	jal game

# Game Over Functionality
	la $a0, str_game_over_output
	li $v0, 4
	syscall
	lw $ra, ($sp)
	addi $sp, $sp, 4
	jr $ra
	
variable:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	li $t0, 0
	li $t1, 10

# Board Updator Loop

printer_loop:
	div $a1, $t1
	mflo $a1
	mfhi $t2
	addi $t2, $t2, '0'
	sb $t2, ($a0)
	addi $a0, $a0, 1
	addi $t0, $t0, 1
	bne $a1, $zero, printer_loop
	sb $zero, ($a0)
	move $v0, $a0
	addi $a1, $a0, -1
	sub $a0, $a0, $t0
	j printer_loop_reverse
	
printer_reverse_loop:
	lbu $t0, ($a0)
	lbu $t1, ($a1)
	sb $t0, ($a1)
	sb $t1, ($a0)
	addi $a0, $a0, 1
	addi $a1, $a1, -1
	
printer_loop_reverse:
	blt $a0, $a1, printer_reverse_loop
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
printer_string:

printer_string_loop:
	lbu $t0, ($a1)
	sb $t0, ($a0)
	addi $a0, $a0, 1
	addi $a1, $a1, 1
	bne $t0, $zero, printer_string_loop
	addi $v0, $a0, -1
	jr $ra

print_memo:
	li $t0, 0
	j printer_memory
	
printer_memory_loop:
	lw $t1, ($a1)
	sw $t1, ($a0)
	addi $a0, $a0, 4
	addi $a1, $a1, 4
	addi $t0, $t0, 4
	
printer_memory:
	blt $t0, $a2, printer_memory_loop
	jr $ra

printer_rotation:
	addi $sp, $sp, -8
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	lw $t0, cPiece
	andi $t1, $t0, 0xfffc
	add $t0, $t0, $a0
	andi $t0, $t0, 0x03
	add $s0, $t1, $t0
	lw $a0, pPiece
	move $a1, $s0
	jal board_mover
	bne $v0, $zero, printer_rotation_hit
	sw $s0, cPiece
	
printer_rotation_hit:
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	addi $sp, $sp, 8
	jr $ra


# Global Piece Movement, Gravity, and Board Updator Mechanics

piece_mov:
	addi $sp, $sp, -8
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	lw $t0, pPiece
	add $s0, $t0, $a0
	move $a0, $s0
	lw $a1, cPiece
	jal board_mover
	bne $v0, $zero, mover_hit
	la $t0, pPiece
	sw $s0, ($t0)
	
mover_hit:
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	addi $sp, $sp, 8
	jr $ra

mover_drop:
	addi $sp, $sp, -8
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	lw $a0, pPiece
	lw $a1, cPiece
	addi $a0, $a0, 12
	move $s0, $a0
	jal board_mover
	bne $v0, $zero, mover_drop_hit
	la $a0, pPiece
	sw $s0, ($a0)
	j mover_drop_miss
	
mover_drop_hit:
	la $a0, grid
	jal board_location
	jal global_array_generator
	lw $a0, pPiece
	lw $a1, cPiece
	jal board_mover
	add $v0, $v0, 1

mover_drop_miss:
	lw $ra, 0($sp)
	lw $s0, 4($sp)
	addi $sp, $sp, 8
	jr $ra

global_array_generator:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	jal randomization_mechanic
	remu $v0, $v0, 7
	addi $v0, $v0, 1
	sw $v0, pPiece
	jal randomization_mechanic
	remu $v0, $v0, 28
	lw $v1, nPiece
	sw $v0, nPiece
	sw $v1, cPiece
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
board_printer:
	lw $t0, board_left
	li $t1, 0
	lw $t2, board_right
	li $t3, 0x08080808
	la $a0, grid
	li $t4, 0
	
board_printer_loop:
	sw $t0, 0($a0)
	sw $t1, 4($a0)
	sw $t2, 8($a0)
	addi $a0, $a0, 12
	addi $t4, $t4, 1
	blt $t4, 20, board_printer_loop
	sw $t3, 0($a0)
	sw $t3, 4($a0)
	sw $t3, 8($a0)
	jr $ra
	
board_mover:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	la $t0, grid
	add $a0, $t0, $a0
	la $t0, global_array
	sll $a1, $a1, 4
	add $a1, $t0, $a1
	li $t0, 0
	
board_mover_row:
	li $t1, 0
		
board_mover_col:
	lbu $t2, ($a0)
	lbu $t3, ($a1)
	beq $t2, $zero, board_mover_next
	beq $t3, $zero, board_mover_next
	li $v0, 1
	j board_mover_exit
	
board_mover_next:
	addi $a0, $a0, 1
	addi $a1, $a1, 1
	addi $t1, $t1, 1
	blt $t1, 4, board_mover_col
	addi $a0, $a0, 8
	addi $t0, $t0, 1
	blt $t0, 4, board_mover_row
	move $v0, $zero
	
board_mover_exit:
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
board_location:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	la $t0, pPiece
	lw $t0, ($t0)
	add $a0, $a0, $t0
	la $t0, cPiece
	la $a1, global_array
	lw $t0, ($t0)
	sll $t0, $t0, 4
	add $a1, $a1, $t0
	li $t0, 0
	
board_location_row:
	ulw $t1, ($a0)
	lw $t2, ($a1)
	or $t1, $t1, $t2
	usw $t1, ($a0)
	addi $a0, $a0, 12
	addi $a1, $a1, 4
	addi $t0, $t0, 1
	blt $t0, 4, board_location_row
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra

# Global Board Printer for Animation

board_renderer:
	addi $sp, $sp, -8
	sw $ra, 0($sp)
	sw $a0, 4($sp)
	la $a0, temp_board
	la $a1, grid
	li $a2, 252
	jal print_memo
	la $a0, temp_board
	jal board_location
	lw $a0, 4($sp)
	la $a1, temp_board
	la $a2, character_picker
	li $t0, 0
	
board_renderer_row:
	li $t1, 0
	
board_renderer_col:
	lbu $a3, ($a1)
	add $a3, $a2, $a3
	lbu $a3, ($a3)
	sb  $a3, ($a0)
	addi $a0, $a0, 1
	addi $a1, $a1, 1
	addi $t1, $t1, 1
	blt $t1, 12, board_renderer_col
	lbu $a3, 9($a2)
	sb  $a3, ($a0)
	addi $a0, $a0, 1
	addi $t0, $t0, 1
	blt $t0, 21, board_renderer_row
	sb $zero, ($a0)
	move $v0, $a0
	lw $ra, 0($sp)
	addi $sp, $sp, 8
	jr $ra

# Board Alignment and Grid

board_alignment:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	li $v0, 0
	la $a0, grid
	add $a0, $a0, 228
	move $a1, $a0 
	li $t0, 0
	
board_alignment_row:
	la $a2, grid
	blt $a1, $a2, board_alignment_empty
	lw $t2, 0($a1)
	lw $t3, 4($a1)
	lw $t4, 8($a1)
	j board_alignment_copy_end
		
board_alignment_empty:
	lw $t2, board_left
	li $t3, 0
	lw $t4, board_right
			
board_alignment_copy_end:
	sw $t2, 0($a0)
	sw $t3, 4($a0)
	sw $t4, 8($a0)
	addi $a2, $a0, 1
	li $t1, 0
	li $t2, 1
		
board_alignment_col:
	lbu $t3, ($a2)
	bne $t3, $zero, board_alignment_filled
	move $t2, $zero
	j board_alignment_next
	
board_alignment_filled:
	addi $a2, $a2, 1
	addi $t1, $t1, 1
	blt $t1, 10, board_alignment_col
	addi $v0, $v0, 1

board_alignment_next:
	bne $t2, $zero, board_alignment_skip
	addi $a0, $a0, -12
			
board_alignment_skip:
	addi $a1, $a1, -12
	addi $t0, $t0, 1
	blt $t0, 20, board_alignment_row
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
user_input:
	lw $v0, 0xffff0000
	sll $v0, $v0, 31
	bltz $v0, user_input_pending
	move $v0, $zero
	jr $ra
	
user_input_pending:
	lw $v0, 0xffff0004
	jr $ra

# Main Game Loop

game:
	addi $sp, $sp, -8
	sw $ra, 0($sp)
	sw $s0, 4($sp)
	
game_next:
	li $s0, 0

main_loop:
	la $a0, board_display
	jal board_renderer
	move $a0, $v0
	la $a1, game_score
	jal printer_string
	move $a0, $v0
	lw $a1, alignment
	jal variable
	move $a0, $v0
	la $a1, game_game
	jal printer_string
	la $a0, board_display
	li $v0, 4
	syscall

# User Input From Keyboard and Display MMIO Simulator
# General Movement and Gravity Mechanic
with_user_input:
	jal user_input
	bne $v0, 'w', rotation_mechanic_left
	li $a0, -1
	jal printer_rotation
	j main_loop
	
rotation_mechanic_left:
	bne $v0, 'w', rotation_mechanic_right
	li $a0, 1
	jal printer_rotation
	j main_loop
			
rotation_mechanic_right:
	bne $v0, 'a', movement_mechanic_down
	li $a0, -1
	jal piece_mov
	j main_loop
	
movement_mechanic_down:
	bne $v0, 'd', skipper_mechanic
	li $a0, 1
	jal piece_mov
	j main_loop
	
skipper_mechanic:
	beq $v0, ' ', gravity
	addi $s0, $s0, 1
	blt $s0, 16384, with_user_input
	
gravity:
	jal mover_drop
	beq $v0, 2, game_over_output
	beq $v0, $zero, game_next
	jal board_alignment
	lw $t0, alignment
	add $t0, $t0, $v0
	sw $t0, alignment
	j game_next

game_over_output:
	lw $s0, 4($sp)
	lw $ra, 0($sp)
	addi $sp, $sp, 8
	jr $ra
# Randomization Mechanic

global_random:
	la $a0, random
	li $t0, 0
	
global_random_id_loop:
	sb $t0, ($a0)
	addi $a0, $a0, 1
	addi $t0, $t0, 1
	blt $t0, 256, global_random_id_loop
	la $a0, random
	la $a1, random_key
	li $t0, 0
	li $t1, 0
	
global_random_mix_loop:
	lbu $t3, ($a1)
	bne $t3, $zero, global_random_key_next
	la $a1, random_key
	lbu $t3, ($a1)
	
global_random_key_next:
	lbu $t2, ($a0)
	add $t1, $t1, $t2
	add $t1, $t1, $t3
	andi $t1, $t1, 0xff
	la $a2, random
	add $a2, $a2, $t1
	lbu $t3, ($a2)
	sb $t2, ($a2)
	sb $t3, ($a0)
	addi $a0, $a0, 1
	addi $a1, $a1, 1
	addi $t0, $t0, 1
	blt $t0, 256, global_random_mix_loop
	sw $zero, random_one
	sw $zero, random_two
	jr $ra
	
randomization_mechanic:
	la $a0, random_one
	la $a1, random_two
	lw $t0, ($a0)
	lw $t1, ($a1)
	addi $t0, $t0, 1
	andi $t0, $t0, 0xff
	sw $t0, ($a0)
	la $a0, random
	add $a0, $a0, $t0
	lbu $t0, ($a0)
	add $t1, $t1, $t0
	andi $t1, $t1, 0xff
	sw $t1, ($a1)
	la $a1, random
	add $a1, $a1, $t1
	lbu $t1, ($a1)
	sb $t0, ($a1)
	sb $t1, ($a0)
	add $t0, $t0, $t1
	andi $t0, $t0, 0xff
	la $a0, random
	add $a0, $a0, $t0
	lbu $v0, ($a0)
	jr $ra

.include "snes.inc" 

PPU_CTRL1       = $2100
PPU_CTRL2       = $2101
PPU_BG_MODE     = $2105
PPU_BG1SC       = $2107
PPU_VRAM_ADDR   = $2116
PPU_VRAM_WRITE  = $2118
PPU_MOSAIC      = $2108
PPU_SCREEN_DIM  = $2133


.org $8000   

Reset:
    sei              
    clc
    xce               
    cld                
    
    lda #0
    sta PPU_CTRL1
    sta PPU_CTRL2
    
    lda #%00000001
    sta PPU_BG_MODE
    

    lda #$00
    sta PPU_BG1SC
    
    
   
    lda #%10000000   
    sta PPU_CTRL1
    
Loop:
    jmp Loop       



.org $FF00
.word 0x0000 
.PS 
cct_init 
elen = 1
Origin: Here 
source(up_ elen); llabel(-,v_s,+)
resistor(right_ elen); rlabel(,R,)
dot
{ 
capacitor(down_ to (Here,Origin)) #(Here,Origin) = (Here.x,Origin.y)
rlabel(+,v,-); llabel(,C,)
dot
} # Restore position and direction
line right_ elen*2/3
inductor(down_ Here.y-Origin.y); rlabel(,L,); b_current(i)
line to Origin
.PE

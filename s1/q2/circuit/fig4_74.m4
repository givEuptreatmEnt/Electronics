.PS 
scale = 1
cct_init 
Start: dot(,,1)
    line right 1
Re: transformer(down_ 1,,6,,8) with .P1 at Here
    line left 1 from Re.P2
    dot(,,1)

gap(from Start to Here,1)
rlabel(+,,-)
"$\SI{120}{\volt}$(rms), \SI{60}{\hertz}" at (Start.x, Re.TS.y)

line right 0.4 from Re.TS; ground  
line up 0.25 from Re.S1 then right 1.5
P1: Here; dot 
line down 0.25 from Re.S2 then right 1.5
P2: Here; dot
ln = (P1.y - P2.y) / 2
diode(to P1 from (P1.x - ln, P1.y - ln), K); rlabel(,D_2,)
P3: (P1.x - ln, P1.y - ln); dot(at P3)
diode(from P3 to P2, K); rlabel(,D_4,)
move to (P1.x + ln, P1.y - ln)
P4: Here; dot
diode(from P1 to P4, K); rlabel(,D_3,)
diode(from P2 to P4, K); rlabel(,D_1,)
move to P3
line left 0.25 then down ln*1.5 then right 2.3;
P5: Here; dot
move to P4
line right 0.25 then up ln;
line to (P5, Here); dot
{
    line right 0.5; dot(,,1)
    "{\color{red} $V_O^+$}" at (Here.x+0.2, Here.y)
}
resistor(from Here to (Here+P5)/2);rlabel(,R,); dot
{
    line right 0.3; ground
}
resistor(to P5); rlabel(,R,); dot
line right 0.5; dot(,,1)
"{\color{red} $V_O^-$}" at (Here.x+0.2, Here.y)

open(from (Re.S1, P1) to Re.TS)
llabel(+,"$v_S$",-)

open(to (Re.S1, P2) from Re.TS)
llabel(+,"$v_S$",-)


.PE

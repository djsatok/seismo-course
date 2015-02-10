prologues := 3;
ahangle := 15;
ahlength := 5;
outputtemplate := "%j-%c.eps";

beginfig(0);

pair p[];

a = 10;

z1 = (0, 0);
z2 = (200, 0);
z3 = (0, 50);

p1 = (-a, 0);
p2 = (x2 + a, 0);
p3 = (0, y3 + a);
p4 = (0, -a);

drawarrow p1 -- p2;
drawarrow p4 -- p3;

dotlabel.lft(btex $1$ etex, z3);
dotlabel.llft(btex $x_0$ etex, z1);
dotlabel.bot(btex $x_1$ etex, 0.1 z2);
dotlabel.bot(btex $x_N$ etex, z2);
dotlabel.bot(btex $x_{N-1}$ etex, .9 z2);

label.lrt(btex $x$ etex, p2);
label.rt(btex $\psi_0(x)$ etex, p3);

draw z3 -- (.1 z2) -- z2 withpen pencircle scaled 1.5;

endfig;

beginfig(1);

pair p[];

z1 = (0, 0);
z2 = (200, 0);
z3 = (0, 50);

p1 = (-a, 0);
p2 = (x2 + a, 0);
p3 = (0, y3 + a);
p4 = (0, -a);

drawarrow p1 -- p2;
drawarrow p4 -- p3;

dotlabel.lft(btex $1$ etex, z3);
dotlabel.llft(btex $x_0$ etex, z1);
dotlabel.bot(btex $x_{i-1}$ etex, 0.3 z2);
dotlabel.bot(btex $x_i$ etex, 0.4 z2);
dotlabel.bot(btex $x_{i+1}$ etex, 0.5 z2);
dotlabel.bot(btex $x_N$ etex, z2);
dotlabel.bot(btex $x_{N-1}$ etex, .9 z2);

label.lrt(btex $x$ etex, p2);
label.rt(btex $\psi_i(x)$ etex, p3);

draw z1 -- (.3 z2) -- (.4 z2 + z3) -- (.5 z2) -- z2 withpen pencircle scaled 1.5;

endfig;

beginfig(2);

pair p[];

z1 = (0, 0);
z2 = (200, 0);
z3 = (0, 50);

p1 = (-a, 0);
p2 = (x2 + a, 0);
p3 = (0, y3 + a);
p4 = (0, -a);

drawarrow p1 -- p2;
drawarrow p4 -- p3;

dotlabel.lft(btex $1$ etex, z3);
dotlabel.llft(btex $x_0$ etex, z1);
dotlabel.bot(btex $x_N$ etex, z2);
dotlabel.bot(btex $x_{N-1}$ etex, .9 z2);

label.lrt(btex $x$ etex, p2);
label.rt(btex $\psi_N(x)$ etex, p3);

draw z1 -- (.9 z2) -- (z2 + z3) withpen pencircle scaled 1.5;

endfig;

end

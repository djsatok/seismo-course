prologues := 3;
ahangle := 15;
ahlength := 5;
outputtemplate := "%j-%c.eps";

beginfig(0);

pair p[];

a = 10;

z1 = (0, 0);
z2 = (250, 0);
z3 = (0, 50);
z4 = (0, -50);

p1 = (-a, 0);
p2 = (x2 + a, 0);
p3 = (0, y3 + a);
p4 = (0, y4 - a);

drawarrow p1 -- p2;
drawarrow p4 -- p3;

label.lrt(btex ${\rm Re} z$ etex, p2);
label.rt(btex ${\rm Im} z$ etex, p3);
label.top(btex $\sigma(x) = 0$ etex, .25 z2);
label.top(btex $\sigma(x) > 0$ etex, .75 z2);
dotlabel.urt(btex $0$ etex, z1);
dotlabel.top(btex $1$ etex, .5z2);
dotlabel.top(btex $2$ etex, z2);

draw z1 --- (.5z2) ... (z2 + 1.1 z4) withpen pencircle scaled 1.5;

endfig;

end

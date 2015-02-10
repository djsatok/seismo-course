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

dotlabel.lft(btex $p_0(t)$ etex, .7 z3);
dotlabel.llft(btex $x_0$ etex, z1);
dotlabel.bot(btex $x_1$ etex, 0.1 z2);
dotlabel.bot(btex $x_N$ etex, z2);
dotlabel.bot(btex $x_{N-1}$ etex, .9 z2);

label.lrt(btex $x$ etex, p2);
label.rt(btex $p(t, x)$ etex, p3);

draw (.7 z3) -- 
	(.1 z2 + .5 z3) -- 
	(.2 z2 + .6 z3) -- 
	(.3 z2 + .8 z3) -- 
	(.4 z2 + .5 z3) -- 
	(.5 z2 + .4 z3) -- 
	(.6 z2 + .2 z3) -- 
	(.7 z2 + .5 z3) -- 
	(.8 z2 + .7 z3) -- 
	(.9 z2 + .8 z3) -- 
	(z2 + .6 z3) withpen pencircle scaled 1.5;

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

dotlabel.llft(btex $x_0$ etex, z1);
dotlabel.bot(btex $x_1$ etex, 0.1 z2);
dotlabel.bot(btex $x_N$ etex, z2);
dotlabel.bot(btex $x_{N-1}$ etex, .9 z2);

label.lrt(btex $x$ etex, p2);
label.rt(btex $w(x)$ etex, p3);

draw (z1) -- 
	(.1 z2 + .8 z3) -- 
	(.2 z2 + .6 z3) -- 
	(.3 z2 + .7 z3) -- 
	(.4 z2 + .3 z3) -- 
	(.5 z2 + .9 z3) -- 
	(.6 z2 + .8 z3) -- 
	(.7 z2 + .6 z3) -- 
	(.8 z2 + .5 z3) -- 
	(.9 z2 + .3 z3) -- 
	(z2 + .6 z3) withpen pencircle scaled 1.5;

endfig;

input TEX;

beginfig(2);

pair p[];

z1 = (0, 0);
z2 = (300, 0);
z3 = (0, 75);

p1 = (-a, 0);
p2 = (x2 + a, 0);
p3 = (0, y3 + a);
p4 = (0, -a);

drawarrow p1 -- p2;
drawarrow p4 -- p3;

dotlabel.llft(btex $x_0$ etex, z1);
dotlabel.bot(btex $x_1$ etex, 0.1 z2);
dotlabel.bot(btex $x_N$ etex, z2);
dotlabel.bot(btex $x_{N-1}$ etex, .9 z2);

label.lrt(btex $x$ etex, p2);
label.rt(btex $c(x)$ etex, p3);

for i=0 upto 9:
	xx := (i - 4.5) / 10;
	v := .1 + 3.6 * xx * xx;
	draw ((i/10) * z2 + v * z3) -- (((i+1)/10) * z2 + v * z3) withpen pencircle scaled 1.5;
	dotlabel.top("", (i + .5) / 10 * z2 + v * z3);
endfor;

for i=0 upto 2:
	xx := (i - 4.5) / 10;
	v := .1 + 3.6 * xx * xx;
	dotlabel.urt(TEX("$c_{" & decimal(2i+1) & "/2}$"), (i + .5) / 10 * z2 + v * z3);
endfor;

dotlabel.ulft(btex $c_{N-3/2}$ etex, .85 * z2 + (.1 + 3.6 * .35 * .35) * z3);
dotlabel.ulft(btex $c_{N-1/2}$ etex, .95 * z2 + (.1 + 3.6 * .45 * .45) * z3);

draw z3
for i=1 upto 100:
	.. ((i / 100) * z2 + (.1 + 3.6 * (i/100 - .5) * (i/100 - .5)) * z3)
endfor
dashed evenly scaled 1;

endfig;

end

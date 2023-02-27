syms n a x
assume(n, 'integer')
f=x^2;
L=1/3;
ao=int(f,x,0,1)/L
an=int(f*cos(n*pi*x/L),x,0,1)/L;
an=subs(an,[cos(n*pi),sin(pi*n),cos(2*n*pi),sin(2*pi*n),cos(3*n*pi),sin(3*pi*n)],[(-1)^n,0,1,0,(-1)^n,0])
bn=int(f*sin(n*pi*x/L),x,0,1)/L;
bn=subs(bn,[cos(n*pi),sin(pi*n),cos(2*n*pi),sin(2*pi*n),cos(3*n*pi),sin(3*pi*n)],[(-1)^n,0,1,0,(-1)^n,0])

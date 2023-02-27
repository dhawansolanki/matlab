syms x(t) s Xs X1
assume(t>0)
eqn = diff(x(t),t,2)+x==sin(t);
eqnLT=laplace(eqn)
eqnLT = subs(eqnLT,laplace(x(t),t,s),Xs);
Xs = solve(eqnLT,Xs);
X1 = subs(Xs,[x(0), subs(diff(x,t),t,0)],[1,-1])
xsol = ilaplace(X1,s,t)
t1= linspace(0,2*pi,21);
x_val=subs(xsol,t,t1);
plot(t1,x_val)
xlabel("t")
ylabel('x')
legend("x(t)")

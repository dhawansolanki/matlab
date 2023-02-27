syms x
format SHORT
f = x^2;
N = 30; %number of terms in the Fourier series
a0 = double((1/pi)*int(f,x,0,2*pi))
a = [];b=[];
for n = 1:N
    a =[a, double((1/pi)*int(f*cos(n*x),x,0,2*pi))];
    b = [b, double((1/pi)*int(f*sin(n*x),x,0,2*pi))];
end
x_val=linspace(0,6*pi,201);
F=a0/2;
for n=1:N
    F =double(F + a(n)*cos(n*x_val)+b(n)*sin(n*x_val));
end
plot(x_val,F)
xlabel("x");
ylabel("f(x)");

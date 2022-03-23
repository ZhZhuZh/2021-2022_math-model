model lab07_3

constant Real N=1005;

Real a1;
Real a2;
Real n;

initial equation
n=11;

equation
a1=0.74*sin(time);
a2=0.35*cos(time);
der(n)=(a1+a2*n)*(N-n);

end lab07_3;

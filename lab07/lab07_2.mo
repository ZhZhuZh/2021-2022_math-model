model lab07_2

constant Real N=1005;
constant Real a1=0.000022;
constant Real a2=0.74;

Real n;

initial equation
n=11;

equation
der(n)=(a1+a2*n)*(N-n);

end lab07_2;

model lab05

constant Real a=0.23;
constant Real b=0.053;
constant Real c=0.43;
constant Real d=0.033;

Real x;
Real y;

initial equation
x=8;
y=14;

equation
der(x)=-a*x+b*x*y;
der(y)=c*y-d*x*y;

end lab05;

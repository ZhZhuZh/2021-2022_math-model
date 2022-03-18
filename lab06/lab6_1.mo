model lab6_1
constant Real a=0.01;
constant Real b=0.02;
constant Real N=17000;

Real I;
Real R;
Real S;

initial equation
I=117;
R=17;
S=16866;

equation
der(S)=0;
der(I)=-b*I;
der(R)=b*I;

end lab6_1;

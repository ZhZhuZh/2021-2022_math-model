model lab4_3
  
constant Real w=sqrt(5);
constant Real g=10;
  
Real x;
Real y;
Real f;
  
initial equation
  x=1;
  y=2;
  f=0;

equation
  f=7*sin(3*time);
  der(x)=y;
  der(y)=-g*y-w*w*x+f;

end lab4_3;

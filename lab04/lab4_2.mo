model lab4_2
  
constant Real w=sqrt(5);
constant Real g=10;
  
Real x;
Real y;
  
initial equation
  x=1;
  y=2;

equation
  der(x)=y;
  der(y)=-g*y-w*w*x;

end lab4_2;

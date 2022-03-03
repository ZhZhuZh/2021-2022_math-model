model lab4_1

  
  constant Real w=sqrt(12);
  
  Real x;
  Real y;
  
initial equation
  x=1;
  y=2;

equation
  der(x)=y;
  der(y)=-w*w*x;

end lab4_1;

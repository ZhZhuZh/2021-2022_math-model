model lab_08_2
constant Real p_cr = 12 "критическая стоимость продукта";
constant Real N = 40 "число потребителей производимого продукта";
constant Real q = 1 "максимальная потребность одного человека в продукте в единицу времени";
constant Real tau_1 = 20 "длительность производственного цикла фирмы 1";
constant Real tau_2 = 30 "длительность производственного цикла фирмы 2"; 
constant Real p_tilda_1 = 8 "себестоимость продукта, то есть переменные издержки на производство единицы продукции фирмы 1";
constant Real p_tilda_2 = 5 "себестоимость продукта, то есть переменные издержки на производство единицы продукции фирмы 2";
constant Real a1 = p_cr/((tau_1^2)*(p_tilda_1^2)*N*q);
constant Real a2 = p_cr/((tau_2^2)*(p_tilda_2^2)*N*q);
constant Real b = p_cr/((tau_1^2)*(p_tilda_1^2)*(tau_2^2)*(p_tilda_2^2)*N*q);
constant Real c1 = (p_cr-p_tilda_1)/(tau_1*p_tilda_1);
constant Real c2 = (p_cr-p_tilda_2)/(tau_2*p_tilda_2);

Real M1 "оборотные средства предприятия 1";
Real M2 "оборотные средства предприятия 2";
Real teta "безразмерное время";

initial equation
M1 = 5;
M2 = 4.5;
teta = 0;

equation
teta = time/c1;
der(M1)/der(teta)=M1-(b/c1)*M1*M2-(a1/c1)*M1^2;
der(M2)/der(teta)=(c2/c1)*M2-(b/c1+0.00021)*M1*M2-(a2/c1)*M2^2;

end lab_08_2;

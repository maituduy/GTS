function b3_3

  time = [1 14 37 63 87 99 109 157];
  price = [4.5 5 6 6.5 7 7.5 8 8];
  p = polyfit(time ,price ,7);
  
  price2002 = polyval(p,181) 
end
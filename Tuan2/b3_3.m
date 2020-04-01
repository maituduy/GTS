function b3_3

  year = [1975 1980 1985 1990];
  we = [72.8 74.2 75.2 76.4];
  ee = [70.2 70.2 70.3 71.2];
  
  pwe = polyfit(year, we, 3);
  pee = polyfit(year, ee, 3);
  
  val_we = polyval(pwe, [1977 1983 1988])
  val_ee = polyval(pee, [1977 1983 1988])
end
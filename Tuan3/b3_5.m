function b3_5
  
  year = [1975 1980 1985 1990];
  we = [72.8 74.2 75.2 76.4];
  ee = [70.2 70.2 70.3 71.2];
  
  val_we = spline(year, we, [1977 1983 1988])
  val_ee = spline(year, ee, [1977 1983 1988])
  
  % polyfit
  pwe = polyfit(year, we, 3);
  pee = polyfit(year, ee, 3);
  
  val_we_poly = polyval(pwe, [1977 1983 1988])
  val_ee_poly = polyval(pee, [1977 1983 1988])
  
  compare_we = val_we - val_we_poly
  compare_ee = val_ee - val_ee_poly
end
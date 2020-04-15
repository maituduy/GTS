function b3_7
    year = [1965 1970 1980 1985 1990 1991];
    production = [17769 24001 25961 34336 29036 33417];
    
    val_production = spline(year, production, [1962 1977 1992])
    real_val = [12380 27403 32059];
    
    err = val_production - real_val
    
    val_production_poly = polyval(polyfit(year, production, 3), [1962 1977 1992])
    
    err_with_poly = val_production - val_production_poly
end
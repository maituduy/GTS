function b3_8
    pert = 1e-4;
    x = [-1:0.1:1];
    y = sin(2 * pi * x);
    
    x_new = [-1:0.01:1]
    y_new_spline = spline(x,y,x_new);
    y_new_poly = polyval(polyfit(x, y, 20), x_new);
    
    figure('Name','Without Pert')
    plot(x_new, y_new_spline, x_new, y_new_poly)
    legend('Spline','Poly')
    
    y_with_pert = sin(2*pi*x)+( -1).^[1:21]* pert;
    
    y_new_spline = spline(x,y_with_pert,x_new);
    y_new_poly = polyval(polyfit(x, y_with_pert, 20), x_new);
    
    figure('Name','With Pert')
    plot(x_new, y_new_spline, x_new, y_new_poly)
    legend('Spline','Poly')
end
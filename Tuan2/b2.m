function b2
    a = -5;
    b = 5;
    i = 1;
    
    for n = 5:5:100
        xc = -cos(pi*[0:n]/n);
        x = (a+b )*0.5+(b-a)*xc *0.5;
        f= '1./(1+x .^2)'; 
        y = eval(f); 
        c = polyfit(x,y,n);
        x = linspace (-5,5 ,1000); 
        p= polyval(c,x);
        fx = eval(f);
        errcgl(i) = max(abs(p-fx));
        i = i + 1;
    end
    
    i = 1;
    for n = 5:5:100
        xc = -cos((2*[0:n] + 1 / n + 1)/2);
        x = (a+b )*0.5+(b-a)*xc *0.5;
        f= '1./(1+x .^2)'; 
        y = eval(f); 
        c = polyfit(x,y,n);
        x = linspace (-5,5 ,1000); 
        p= polyval(c,x);
        fx = eval(f);
        errcg(i) = max(abs(p-fx));
        i = i + 1;
    end
    
    plot([5:5:100], errcgl, [5:5:100], errcg);
end

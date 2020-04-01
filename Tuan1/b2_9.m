function b2_9
  a1=10; a2 =13; a3=8; a4 =10;
  n=150; x01= -0.1; x02=2*pi/3;
  for k=0:100
    beta = k*pi/n;
    f = @(x)(a1 / a2) * cos(beta)  - (a1 / a4) * cos(x) - cos(beta -x) + ...
        (a1^2 + a2^2 - a3^2+ a4 ^2)/(2* a2*a4);
    df = @(x)(a1 / a4) * sin(x) - sin(beta - x);
    
    [zero ,res , niter]= newton(f,df ,x01 ,1e-5, 100);
    
    x1(k+1) = zero;
    [zero ,res , niter]= newton(f,df ,x02 ,1e-5, 100);
    x2(k+1) = zero;
    res2(k+1) = res;
    x3(k+1) = fsolve(f, x01);
    x4(k+1) = fsolve(f, x02);
    
  end
max(x3 - x1)
max(x4 - x2)
end

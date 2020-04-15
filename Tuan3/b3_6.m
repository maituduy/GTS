function b3_6
    T = [4:4:20];
    rho=[1000.7794 ,1000.6427 ,1000.2805 ,999.7165 ,998.9700];
    Tnew = [6:4:18];
    rhonew = spline(T,rho , Tnew)
    real_val = [1000.74088 1000.4882 1000.0224 999.3650]
    
    err = rhonew - real_val
end
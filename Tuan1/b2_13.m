function b2_13
  fun = @f;
  dfun = @df;
  [zero,res,niter] = newton(fun, dfun, 1, 10e-12, 100);
  zero
end

function res = f(x)
  M = 6000;
  v = 1000;
  n = 5;
  res = M - v * (1 + x) / x * ((1 + x) ^ n - 1);
endfunction

function res = df(x)
  res = - 5000*x^4 - 24000*x^3 - 45000*x^2 - 40000*x - 15000;
endfunction

function b2_2
  fun = @f;
  dfun = @df;
  tic
  [zero,res,niter] = newton(fun, dfun, 1, 10e-12, 1000)
  toc
end

function res = f(V)
  p = 3.5 * 10^7;
  T = 300;
  a = 0.401;
  b = 42.7 * 10^-6;
  N = 1000;
  k = 1.3806503 * 10^(-23);
  res = (p + a *(N/V)^2) * (V - N*b) - k*N*T;
  
endfunction

function res = df(V)
  res = 401000/V^2 - (802000*(V - 427/10000))/V^3 + 35000000;
  
endfunction

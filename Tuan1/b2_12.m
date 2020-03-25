function b2_12
  fun = @f;
  dfun = @df;
  [zero,res,niter] = newton(fun, dfun, 1, 10e-5, 1000);
  zero
end

function res = f(x)
  g = 9.8;
  v0 = 10;
  h = 1;
  res = sin(x) - sqrt(2*g*h / (v0^2));
endfunction

function res = df(x)
  res = cos(x);
endfunction

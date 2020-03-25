function b2_3
  fun = @f;
  dfun = @df;
  [zero,res,niter] = newton(fun, dfun, 1, 10e-5, 1000);
  zero
end

function res = f(x)
  res = 2 * x^2 + 9.8 * sin(x) - 9.8 * sinh(x);
endfunction

function res = df(x)
  res = 4*x + 9.8 * cos(x) - 9.8 * cosh(x);
endfunction

function b2_14
  fun = @f;
  dfun = @df;
  [zero,res,niter] = newton(fun, dfun, 1, 10e-12, 100);
  zero
end

function res = f(x)
  l2 = 10;
  l1 = 8;
  gamma = 0.6 * pi;
  res = l2 * cos(pi - gamma - x) / sin (pi - gamma  - x)^2 - l1* cos (x) / sin(x)^2;
endfunction

function res = df(x)
  res = 8/sin(x) - (20*cos(x - (2*pi)/5)^2)/sin(x - (2*pi)/5)^3 - 10/sin(x - (2*pi)/5) + (16*cos(x)^2)/sin(x)^3;
endfunction

function b3
  fun = @f1;
  fzero(fun, -1)
  fzero(fun, 3)
  
  fun2 = @f2;
  options = optimoptions('fsolve','Display','iter');
  fsolve(fun2,[3,-3], options)
end

function r = f1(x)
  r = x^4 - 4*x^3 + 6*x^2 - 4*x -16;
endfunction

function r = f2(x)
  r(1) = (x(1)^3-3*x(1)^2+3*x(1)-2)*(x(2)^2+2*x(2)-4);
  r(2) = x(1)^2-2*x(1)-9;
endfunction
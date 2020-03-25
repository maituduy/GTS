function b1
    for i=1:1000
      if checkPrime(i)  
        i
      end
    end
end  

function res = checkPrime(n)
  if n < 2 
    res = false;
    return;
  end
  
  for i=2:sqrt(n)
    if mod(n,i) == 0 
      res = false;
      return;
    endif
  endfor
  
  res = true;
endfunction



y0 = 1;
t0 = 0;
h = 2.2;
n = 11;
tn = t0 + h*n; % equal to: t0 + h*n,
%t(n) = t(0) + h*n
% yn = y(n-1) + h*y(t(n)
%foward_euler(y0, t0, h, tn);
[tb, yb] = backward_euler(y0, t0, h, tn);
[tf, yf] = forward_euler(y0, t0, h, tn);
[tcn, ycn] = cn(y0, t0, h, tn);

plot(tb, yb, tf, yf, tcn,ycn);
legend('an','hien','cn');
function [t,y] = forward_euler(y0, t0, h, tn)
    t = (t0:h:tn)';
    y = zeros(size(t));
    y(1) = y0;
    for i = 1:1:length(t)-1
        fun = @(x) y(i) + h * (-x) - x;
        y(i+1) = y(i) + h*f(y(i),t(i));
    end    
    y
end

function [t,y] = backward_euler(y0, t0, h, tn)
    t = (t0:h:tn)';
    y = zeros(size(t));
    y(1) = y0;
    for i = 1:1:length(t)-1
        fun = @(x) y(i) + h * (-x) - x;
        y(i+1) = fzero(fun, 0);
    end    
    y
        
end

function [t,y] = cn(y0, t0, h, tn)
    t = (t0:h:tn)';
    y = zeros(size(t));
    y(1) = y0;
    for i = 1:1:length(t)-1
        fun = @(x) y(i) + (h/2) *(f(y(i),t(i)) +(-x)) - x;
        y(i+1) = fzero(fun, 0);
    end
end

function dydt = f(y,t)
    dydt = -y;
end
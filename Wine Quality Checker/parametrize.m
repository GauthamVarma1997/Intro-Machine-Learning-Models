function Xn = parametrize(X,m)
  mx = max(X,[],1);
  mn = min(X,[],1);
  diff = mx-mn;
  
  sm = sum(X,1);
  mu = sm/m;
  
  Xn = (X.-mu)./diff;
endfunction

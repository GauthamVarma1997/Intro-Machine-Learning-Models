function thetafff = norm(X,y)
  thetafff = pinv(X'*X) * X' * y;
endfunction

function J = costFunction(X,y,theta,m)
  
  A = ((X*theta)-y).^2;
  B = sum(A);
  J = B/(2*m);
  
end
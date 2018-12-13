function [thetaf,J_his] = grad_descent(theta,a,X,y,m,n)
    iter = 1000;
    J_his = zeros(iter , 1);
    thetaf = norm(X,y);
    for i=1:iter,
       A = (X*theta)-y;
       B = A.*X;
       C = sum(B,1);
       D = (a/m)*C';
       theta = theta-D;
       
       J_his(i) = costFunction(X,y,theta,m);
       
      
%%{     
     if(i>2 && (J_his(i-1) - J_his(i))<0.001),
       break;
     endif;
%%}
    endfor;    
    thetaf = norm(X,y);
    
   
    
    
    
    
    
    
    
    %{
    if thetaf == theta,
      thetaf = C'
    else,
      thetaf = grad_descent(thetaf,X,y,m,n);
    endif
    %}
endfunction

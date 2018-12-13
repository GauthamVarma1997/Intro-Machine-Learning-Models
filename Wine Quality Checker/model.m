clc;        % clears the screen
clear;      % removes all variables being used by cpu
close all;  % closes all the graphs
fprintf('Starting.....\n\n');
fprintf('Loading Data....\n\n');

data = csvread('data.txt');

fprintf('Data Loaded\nPress ENTER to continue...\n\n');
pause;


X = data(:,1:11);
y = data(:,12);

m = size(X,1);
n = size(X,2)+1;

X=[ones(m,1),X];


%initalizing all theta values to zeroes

theta = 5*ones(n,1);


%------------------------------------------------------COST FUNCTION---------------------------------------------------
%computing cost function J
J = costFunction(X,y,theta,m);
fprintf('The cost function for all theta=0 is :%f\n',J);
fprintf('Press ENTER to continue...\n\n');
pause;
%-----------------------------------------------------------------------------------------------------------------------



a = 0.01;   % alpha value

Xn = parametrize(X,m);



%--------------------------------------------------------GRADIENT DESCENT---------------------------------------------
fprintf('To apply Gradient Descent press ENTER\n');
pause;
%applying gradient descent to the data
thetaf = grad_descent(theta,a,X,y,m,n);

%{
%NORMALIZED Version
thetafff = norm(X,y);
%}
%----------------------------------------------------------------------------------------------------------------------


x=[6.2,0.66,0.48,1.2,0.029,29,75,0.9892,3.33,0.39,12.8];
h=hypo(x,thetaf);

fprintf('\n\nThe Predicted Quality for the values entered is  :%f\n\n',h);



%J = costFunction(Xn,y,thetaf,m);

%{
x=[11.2,0.28,0.56,1.9,0.075,17,60,0.998,3.16,0.58,9.8];
h=hypo(x,thetaf);

fprintf('\n\nThe prediction for the values enterd is :%f\n\n',h);
%}






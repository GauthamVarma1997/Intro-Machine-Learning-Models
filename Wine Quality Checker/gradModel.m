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



a = 0.0001;   % alpha value

Xn = parametrize(X,m);



%--------------------------------------------------------GRADIENT DESCENT---------------------------------------------
fprintf('To apply Gradient Descent press ENTER\n');
pause;
%applying gradient descent to the data
[thetaf,J_his] = grad_descent(theta,a,X,y,m,n);

%NORMALIZED Version
%thetafff = norm(X,y);
%----------------------------------------------------------------------------------------------------------------------


x=[7.9,0.32,0.51,1.8,0.341,17,56,0.9969,3.04,1.08,9.2];
h=hypo(x,thetaf);

fprintf('\n\nThe prediction for the values enterd is :%f\n\n',h);



%J = costFunction(Xn,y,thetaf,m);

%{
x=[11.2,0.28,0.56,1.9,0.075,17,60,0.998,3.16,0.58,9.8];
h=hypo(x,thetaf);

fprintf('\n\nThe prediction for the values enterd is :%f\n\n',h);
%}






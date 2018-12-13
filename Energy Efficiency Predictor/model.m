clc;        % clears the screen
clear;      % removes all variables being used by cpu
close all;  % closes all the graphs
fprintf('Starting.....\n\n');
fprintf('Loading Data....\n\n');

data = load('data.csv');

fprintf('Data Loaded\nPress ENTER to continue...\n\n');
pause;


X = data(:,1:8);
y1 = data(:,9);
y2 = data(:,10);

m = size(X,1);
n = size(X,2)+1;

X=[ones(m,1),X];


%initalizing all theta values to fives

theta1 = 5*ones(n,1);
theta2 = 5*ones(n,1);


%------------------------------------------------------COST FUNCTION---------------------------------------------------
%computing cost function J
J = costFunction(X,y1,zeros(n,1),m);
fprintf('The cost function for all theta=0 is :%f\n',J);
fprintf('Press ENTER to continue...\n\n');
pause;
%-----------------------------------------------------------------------------------------------------------------------



a = 0.000001;   % alpha value

%Xn = parametrize(X,m);



%--------------------------------------------------------GRADIENT DESCENT---------------------------------------------
fprintf('To apply Gradient Descent press ENTER\n');
pause;
%applying gradient descent to the data
[thetaf1,J_his1] = grad_descent(theta1,a,X,y1,m,n);
[thetaf2,J_his2] = grad_descent(theta2,a,X,y2,m,n);

%{
%NORMALIZED Version
thetaf1 = norm(X,y1);
thetaf2 = norm(X,y2);
%}
%----------------------------------------------------------------------------------------------------------------------


x=[0.98,514.50,294.00,110.25,7.00,5,0.10,1];
h1=hypo(x,thetaf1);
h2=hypo(x,thetaf2);

fprintf('\n\nPredicted Heating Load :%f\n',h1);
fprintf('Predicted Cooling Load :%f\n',h2);



%J = costFunction(Xn,y,thetaf,m);

%{
x=[11.2,0.28,0.56,1.9,0.075,17,60,0.998,3.16,0.58,9.8];
h=hypo(x,thetaf);

fprintf('\n\nThe prediction for the values enterd is :%f\n\n',h);
%}






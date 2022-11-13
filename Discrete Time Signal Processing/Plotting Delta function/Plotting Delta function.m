clc;
clear all;
close all;
%%Ploting delta function%%
n=-20:1:20;
x=zeros(1,length(n));
for i=1:length(n);
    if n(i)==0
        x(i)=1;
    else
        x(i)=0;
    end
end
figure('Name','Delta Function')
stem(n,x)
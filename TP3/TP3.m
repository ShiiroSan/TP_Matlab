%TP3.m
%BOUTIN
%29 09 16

clear
clc
close all

x = [-2 :.1 :2];

subplot(6,1,1);
y=x;
plot(x,y)
grid on
xlabel('T en sec')

subplot(6,1,2);
y=-2*x+1;
plot(x,y)
grid on
xlabel('T en sec')

subplot(6,1,3);
y=x.^2;
plot(x,y)
grid on
xlabel('T en sec')

subplot(6,1,4);
y=abs(x);
plot(x,y)
grid on
xlabel('x')

subplot(6,1,5);
y=exp(x);
plot(x,y)
grid on
xlabel('x')

subplot(6,1,6);
y=exp(-x);
plot(x,y)
grid on
xlabel('T en sec')

figure()

x = [.0001 :.01 :2];

subplot(2,1,1);
y=sqrt(x);
plot(x,y)
grid on
xlabel('T en sec')

subplot(2,1,2);
y=log(x);
plot(x,y)
grid on
xlabel('T en sec')

figure()

subplot(3,1,1);
ezplot('sin(x)')
subplot(3,1,2);
ezplot('cos(x)')
subplot(3,1,3);
ezplot('tan(x)')

figure()

subplot(3,1,1);
ezplot('asin(x)')
subplot(3,1,2);
ezplot('acos(x)')
subplot(3,1,3);
ezplot('atan(x)')

figure()

To=.1;
pas=To/100;
t=0 :pas :2*To;

s=5*sin((2*pi/To)*t);
l=5*sin((2*pi/To)*(t-(To/4)));
m=5*sin((2*pi/To)*(t+(To/4)));
subplot(6,1,1);
plot(s)
subplot(6,1,2);
plot(l)
subplot(6,1,3);
plot(m)

n=2*square((2*pi/To)*t);
subplot(6,1,4);
plot(n)

o=sawtooth((2*pi/To)*t);
subplot(6,1,5);
plot(o)

subplot(6,1,6);
plot(t,s,t,l,t,m,t,n,t,o)

figure()

t=[0 :0.1 :30];
envSSa=exp(-.1.*t);
ssa=sin((2/3).*t).*envSSa;

plot(t,ssa, t, envSSa)
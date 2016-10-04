%TP4.m
%BOUTIN
%29 09 16

clear
clc
close all

 clear all
 Fs=8192;
 Ts=1/Fs;
 t=[0:Ts:1];
 
 F_Do1=262;
 Do1=sin(2*pi*F_Do1*t);
 
 F_Re=294;
 Re=sin(2*pi*F_Re*t);
 
 F_Mi=330;
 Mi=sin(2*pi*F_Mi*t);
 
 F_Fa=349;
 Fa=sin(2*pi*F_Fa*t);
 
 F_Sol=392;
 Sol=sin(2*pi*F_Sol*t);
 
 F_La=440;
 La=sin(2*pi*F_La*t);
 
 F_Si=494;
 Si=sin(2*pi*F_Si*t);
 
 F_Do2=523;
 Do2=sin(2*pi*F_Do2*t);
 
 G=[Do1 Re Mi Fa Sol La Si Do2];
  %sound(G,Fs);
  
  %do - do - do - ré - mi - ré - do - mi - ré - ré - do
  
Mp3=[Do1 Do1 Do1 Re Mi Re Do1 Mi Re Re Do1];
sound(Mp3,Fs);
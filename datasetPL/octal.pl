:- use_module('datasetPL/utils.py').

nn(mnist_net,[X],Y,[0,1,2,3,4,5,6,7,8,9]) :: digit(X,Y).

number([],Result,Result).
number([H|T],Acc,Result) :- 
    digit(H,Nr), 
    Acc2 is Nr+10*Acc,
    number(T,Acc2,Result).
number(X,Y) :- number(X,0,Y).

octal_div(X,Y,Z) :- number(X,X2), number(Y,Y2), oct_div(X2, Y2, Z1), Z is Z1.
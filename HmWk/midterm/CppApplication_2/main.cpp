/* 
 * File:   main.cpp
 * Author: rcc
 *
 * Created on August 20, 2014, 2:45 PM
 */

#include <iostream>
using namespace std;

void menu();
int select(int r1);
void payCheck();
void packages();
void fib();

int main() {
    menu();
            
    return 0;
}

//===

void menu() {
    int r1;
    do {
    cout<<"Enter a number for what problem you want."<<endl
            <<"1.   PayCheck" << endl << "2.   Packages" << endl
            << "3.   Fibonacci sequence." << endl 
            << "4.   Quit Program" << endl;
    cin >> r1;
    select(r1);
    }while(r1 <= 3);
}

int select(int r1) {
    switch(r1) {
        case 1:
            cout << "You have chosen PayCheck.\n";
            //payCheck();
            break;
        case 2:
            cout << "You have chosen Packages.\n";
            //packages();
            break;
        case 3: 
            cout << "You have chosen Fibonacci sequence.\n";
            fib();
            break;
        case 4:
            cout << "You have chosen to Quit,\n Goodbye.\n";
            break;
        default:
            cout << "Please enter 1-4.\n";
    }
}

void payCheck() {
    
}

void packages() {
    
}

void fib() {
    int n;
    cout << "Enter number for fibonacci sequence you want.";
    cin >> n;
    cout << "You entered " << n << " .\n";
    if((n == 1) || (n == 2)) {
        return 1;
    } else { 
	return fib(n-1) + fib(n-2);
    }
}
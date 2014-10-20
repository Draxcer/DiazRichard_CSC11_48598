/* 
 * File:   main.cpp
 * Author: rcc
 *
 * Created on August 20, 2014, 2:45 PM
 */

#include <iostream>
using namespace std;

int main() {
    int menuOptions;
    cout<<"Enter a number for what problem you want."<<endl
            <<"1.   PayCheck" << endl << "2.   Packages" << endl
            << "3.   Fibonacci sequence." << endl 
            << "Press anything else to exit." << endl;
    cin >> menuOptions;
    
    switch(menuOptions) {
        case 1:
            cout << "You have chosen PayCheck.\n";
            //function
            break;
        case 2:
            cout << "You have chosen Packages.\n";
            //function
            break;
        case 3: 
            cout << "You have chosen Fibonacci sequence.\n";
            //function
            break;
        default:
            cout << "You have chosen to Quit,\n Goodbye.\n";
    }
            
    return 0;
}


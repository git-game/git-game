#include <iostream>

using namespace std;

int main()
{
   string mesg = "Hello! Who are you?";
   string input;
   cout << mesg << endl;
   cin >> input;
   string reply = "Well, " + input + ", we hope you are having fun with our git-game!";
   cout << reply << endl; 
}


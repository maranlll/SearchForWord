#include "AndQuery.h"
#include "BinaryQuery.h"
#include "NotQuery.h"
#include "OrQuery.h"
#include "WordQuery.h"
#include <bits/stdc++.h>

using namespace std;

void runQueries(ifstream &);

int main() {
    string file;
    ifstream in;
    cout << "input the file you want to search or q to quit: ";
    while (true) {
        cin >> file;
        if (file == "q") {
            break;
        }
        in.open(file);
        if (!in) {
            cout << "this file do not exist, please input again, or q to quit: ";
        } else {
            runQueries(in);
            in.close();
            cout << "input the file you want to search or q to quit: ";
        }
    }
    return 0;
}

void runQueries(ifstream &in) {
    TextQuery textQuery(in);
    while (true) {
        cout << "enter word to look for, or q to quit: ";
        string s;
        fflush(stdin);
        if (!(getline(cin, s)) || s == "q") {
            break;
        } else {
            istringstream ss(s);
            Query q;
            string s;
            ss >> s;
            if (s == "~") {
                ss >> s;
                q = ~Query(s);
            } else {
                q = Query(s);
            }
            while (ss >> s) {
                if (s == "&") {
                    ss >> s;
                    q = q & Query(s);
                } else if (s == "|") {
                    ss >> s;
                    q = q | Query(s);
                }
            }
            // print(cout, textQuery.query(s)) << endl;
            print(cout, q.eval(textQuery));
        }
    }
}
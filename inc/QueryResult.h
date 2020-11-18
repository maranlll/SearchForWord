#ifndef QUERYRESULT_H
#define QUERYRESULT_H

#include <bits/stdc++.h>

using namespace std;

class QueryResult {
  public:
    using line_no = vector<string>::size_type;
    QueryResult() = default;
    QueryResult(const string &, shared_ptr<vector<string>>, shared_ptr<set<line_no>>);
    QueryResult(const QueryResult &);
    QueryResult(const string &);
    QueryResult(QueryResult &&) noexcept;
    QueryResult &operator=(const QueryResult &);
    QueryResult &operator=(QueryResult &&) noexcept;
    friend ostream &print(ostream &, const QueryResult &);
    shared_ptr<vector<string>> get_file() { return file; }
    shared_ptr<set<line_no>> get_lines() { return lines; }
    set<line_no>::iterator begin() { return lines->begin(); }
    set<line_no>::iterator end() { return lines->end(); }

  private:
    string sought;
    shared_ptr<vector<string>> file;
    shared_ptr<set<line_no>> lines;
};

#endif
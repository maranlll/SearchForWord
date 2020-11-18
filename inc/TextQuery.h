#ifndef TEXTQUERY_H
#define TEXTQUERY_H

#include "QueryResult.h"
#include <bits/stdc++.h>

using namespace std;

class TextQuery {
  public:
    using line_no = vector<string>::size_type;
    TextQuery() = default;
    TextQuery(ifstream &);
    TextQuery(const TextQuery &textQuery) : file(textQuery.file), wm(textQuery.wm) {}
    TextQuery(TextQuery &&textQuery) noexcept : file(textQuery.file), wm(textQuery.wm) {}
    TextQuery &operator=(const TextQuery &);
    TextQuery &operator=(TextQuery &&) noexcept;
    QueryResult query(const string &) const;

  private:
    shared_ptr<vector<string>> file;
    shared_ptr<map<string, shared_ptr<set<line_no>>>> wm;
};

#endif
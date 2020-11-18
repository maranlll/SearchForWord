#ifndef QUERY_H
#define QUERY_H

#include "WordQuery.h"
#include <bits/stdc++.h>

using namespace std;

class Query {
    friend Query operator&(const Query &, const Query &);
    friend Query operator|(const Query &, const Query &);
    friend Query operator~(const Query &);

  public:
    Query() = default;
    Query(const string &s) : q(new WordQuery(s)) {}
    QueryResult eval(const TextQuery &tq) const { return q->eval(tq); }
    string rep() const { return q->rep(); }
    Query &operator=(const Query &) = default;
    Query(const Query &) = default;

  private:
    shared_ptr<Query_base> q;
    Query(shared_ptr<Query_base> query_base) : q(query_base) {}
};

#endif
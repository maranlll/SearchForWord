#ifndef NOT_QUERY_H
#define NOT_QUERY_H

#include "Query.h"
#include <bits/stdc++.h>

using namespace std;

class NotQuery : public Query_base {
    friend Query operator~(const Query &q);

  private:
    NotQuery(const Query &q) : query(q) {}
    QueryResult eval(const TextQuery &) const override;
    string rep() const override { return "~(" + query_word + ")"; }
    string query_word;
    Query query;
};

#endif
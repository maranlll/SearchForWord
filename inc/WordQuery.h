#ifndef WORD_QUERY_H
#define WORD_QUERY_H

#include "Query_base.h"
#include <bits/stdc++.h>

using namespace std;

class WordQuery : public Query_base {
    friend class Query;

  private:
    QueryResult eval(const TextQuery &tq) const override { return tq.query(query_word); }
    string rep() const override { return query_word; }
    string query_word;
    WordQuery(const string &s) : query_word(s) {}
};
#endif
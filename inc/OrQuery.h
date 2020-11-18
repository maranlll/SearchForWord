#ifndef OR_QUERY_H
#define OR_QUERY_H

#include "BinaryQuery.h"
#include <bits/stdc++.h>

using namespace std;

class OrQuery : public BinaryQuery {
    friend Query operator|(const Query &l, const Query &r);

  private:
    OrQuery(const Query &l, const Query &r) : BinaryQuery(l, r, "|") {}
    QueryResult eval(const TextQuery &t) const override;
};

#endif
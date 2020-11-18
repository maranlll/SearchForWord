#ifndef BINARY_QUERY_H
#define BINARY_QUERY_H

#include "Query.h"
#include <bits/stdc++.h>

using namespace std;

class BinaryQuery : public Query_base {
  protected:
    Query lhs, rhs;
    string opStm;
    BinaryQuery(const Query &l, const Query &r, const string &op) : lhs(l), rhs(r), opStm(op) {}
    string rep() const override { return "(" + lhs.rep() + " " + opStm + " " + rhs.rep() + ")"; }
};
#endif
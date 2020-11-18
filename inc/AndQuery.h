#ifndef AND_QUERY_H
#define AND_QUERY_H

#include "BinaryQuery.h"
#include <bits/stdc++.h>

using namespace std;

class AndQuery : public BinaryQuery {
    friend Query operator&(const Query &l, const Query &r);

  private:
    AndQuery(const Query &l, const Query &r) : BinaryQuery(l, r, "&") {}
    QueryResult eval(const TextQuery &) const override;
};

#endif
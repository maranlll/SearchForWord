#include "NotQuery.h"

QueryResult NotQuery::eval(const TextQuery &tq) const {
    QueryResult qr = query.eval(tq);
    auto notin = make_shared<set<line_no>>();
    auto size = qr.get_file()->size();
    auto beg = qr.begin();
    auto end = qr.end();
    for (auto i = 0; i < size; i++) {
        if (beg == end || i != *beg) {
            notin->insert(i);
        } else if (i == *beg) {
            beg++;
        }
    }
    return {rep(), qr.get_file(), notin};
}

Query operator~(const Query &q) {
    // return {shared_ptr<NotQuery>(new NotQuery(q))};
    return shared_ptr<Query_base>(new NotQuery(q));
}
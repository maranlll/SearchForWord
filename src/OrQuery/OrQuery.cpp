#include "OrQuery.h"

Query operator|(const Query &l, const Query &r) {
    return shared_ptr<Query_base>(new OrQuery(l, r));
    // return {shared_ptr<OrQuery>(new OrQuery(q))};
}

QueryResult OrQuery::eval(const TextQuery &tq) const {
    auto leval = lhs.eval(tq);
    auto reval = rhs.eval(tq);
    auto ret_lines = make_shared<set<line_no>>();
    ret_lines->insert(leval.begin(), leval.end());
    ret_lines->insert(reval.begin(), reval.end());
    return {rep(), leval.get_file(), ret_lines};
}
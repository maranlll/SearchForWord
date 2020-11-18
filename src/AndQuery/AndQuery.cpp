#include "AndQuery.h"

Query operator&(const Query &l, const Query &r) {
    return shared_ptr<Query_base>(new AndQuery(l, r));
    // return {shared_ptr<AndQuery>(new AndQuery(q))};
}

QueryResult AndQuery::eval(const TextQuery &tq) const {
    auto leval = lhs.eval(tq);
    auto reval = rhs.eval(tq);
    // auto ret_lines = shared_ptr<set<line_no>>(new set<line_no>());
    auto ret_lines = make_shared<set<line_no>>();
    set_intersection(leval.begin(), leval.end(), reval.begin(), reval.end(),
                     inserter(*ret_lines, ret_lines->begin()));
    return {rep(), leval.get_file(), ret_lines};
}
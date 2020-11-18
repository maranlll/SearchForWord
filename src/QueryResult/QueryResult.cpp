#include "QueryResult.h"

ostream &print(ostream &os, const QueryResult &queryResult) {
    os << queryResult.sought << " occurs " << queryResult.lines->size() << " "
       << (queryResult.lines->size() <= 1 ? "time" : "times") << endl;
    for (auto line : *queryResult.lines) {
        os << "\t(line " << line + 1 << ") " << *(queryResult.file->begin() + line) << endl;
    }
    return os;
}

QueryResult::QueryResult(const string &s, shared_ptr<vector<string>> f, shared_ptr<set<line_no>> l)
    : sought(s), file(f), lines(l) {}

QueryResult::QueryResult(const QueryResult &queryResult)
    : sought(queryResult.sought), file(queryResult.file), lines(queryResult.lines) {}

QueryResult::QueryResult(QueryResult &&queryResult) noexcept
    : sought(std::move(queryResult.sought)), file(queryResult.file), lines(queryResult.lines) {}

QueryResult &QueryResult::operator=(const QueryResult &queryResult) {
    sought = queryResult.sought;
    file = queryResult.file;
    lines = queryResult.lines;
    return *this;
}

QueryResult &QueryResult::operator=(QueryResult &&queryResult) noexcept {
    sought = std::move(queryResult.sought);
    file = queryResult.file;
    lines = queryResult.lines;
    return *this;
}
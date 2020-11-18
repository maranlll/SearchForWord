#include "TextQuery.h"

TextQuery::TextQuery(ifstream &in)
    : file(new vector<string>), wm(new map<string, shared_ptr<set<line_no>>>) {
    string text;
    while (getline(in, text)) {
        file->push_back(text);
        int n = file->size() - 1;
        istringstream iss(text);
        string word;
        while (iss >> word) {
            auto &lines = (*wm)[word];
            if (!lines) {
                lines.reset(new set<line_no>);
            }
            lines->insert(n);
        }
    }
}

TextQuery &TextQuery::operator=(const TextQuery &textQuery) {
    file = textQuery.file;
    wm = textQuery.wm;
    return *this;
}

TextQuery &TextQuery::operator=(TextQuery &&textQuery) noexcept {
    file = textQuery.file;
    wm = textQuery.wm;
    return *this;
}

QueryResult TextQuery::query(const string &sought) const {
    static shared_ptr<set<line_no>> nodata(new set<line_no>);
    auto loc = (*wm).find(sought);
    if (loc == (*wm).end()) {
        return {sought, file, nodata};
    } else {
        return {sought, file, loc->second};
    }
}
package org.greenrobot.greendao.generator;

import java.util.ArrayList;
import java.util.List;

public class Query {
    private boolean distinct;
    private String name;
    private List<QueryParam> parameters = new ArrayList();

    public Query(String str) {
        this.name = str;
    }

    public QueryParam addEqualsParam(Property property) {
        return addParam(property, "=");
    }

    public QueryParam addParam(Property property, String str) {
        QueryParam queryParam = new QueryParam(property, str);
        this.parameters.add(queryParam);
        return queryParam;
    }

    public void distinct() {
        this.distinct = true;
    }
}

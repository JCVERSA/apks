package org.greenrobot.greendao.generator;

public class QueryParam {
    private Property column;
    private String operator;

    public QueryParam(Property property, String str) {
        this.column = property;
        this.operator = str;
    }

    public Property getColumn() {
        return this.column;
    }

    public String getOperator() {
        return this.operator;
    }
}

package com.amazonaws;

import java.util.Map;

public abstract class ResponseMetadata {

    protected final Map f17702a;

    public ResponseMetadata(Map map) {
        this.f17702a = map;
    }

    public String a() {
        return (String) this.f17702a.get("AWS_REQUEST_ID");
    }

    public String toString() {
        Map map = this.f17702a;
        return map == null ? "{}" : map.toString();
    }
}

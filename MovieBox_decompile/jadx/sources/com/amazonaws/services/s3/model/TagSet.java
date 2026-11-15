package com.amazonaws.services.s3.model;

import java.util.HashMap;
import java.util.Map;

public class TagSet {

    private Map f18212a;

    public TagSet() {
        this.f18212a = new HashMap(1);
    }

    public Map a() {
        return this.f18212a;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("{");
        stringBuffer.append("Tags: " + a());
        stringBuffer.append("}");
        return stringBuffer.toString();
    }

    public TagSet(Map map) {
        HashMap map2 = new HashMap(1);
        this.f18212a = map2;
        map2.putAll(map);
    }
}

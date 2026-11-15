package com.google.common.collect;

import java.util.Map;

public abstract class o2 extends q2 implements Map.Entry {
    protected o2() {
    }

    public boolean equals(Object obj) {
        return l().equals(obj);
    }

    @Override
    public Object getKey() {
        return l().getKey();
    }

    @Override
    public Object getValue() {
        return l().getValue();
    }

    @Override
    public int hashCode() {
        return l().hashCode();
    }

    protected abstract Map.Entry l();

    public Object setValue(Object obj) {
        return l().setValue(obj);
    }

    protected boolean standardEquals(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return com.google.common.base.j.a(getKey(), entry.getKey()) && com.google.common.base.j.a(getValue(), entry.getValue());
    }
}

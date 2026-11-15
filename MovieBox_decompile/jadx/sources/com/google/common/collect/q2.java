package com.google.common.collect;

public abstract class q2 {
    protected q2() {
    }

    protected abstract Object delegate();

    public String toString() {
        return delegate().toString();
    }
}

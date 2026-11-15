package com.facebook.ads.redexgen.core;

import java.util.Objects;

public final class C1X extends AbstractC0779Am<Object> {
    public final transient int A00;
    public final transient int A01;
    public final transient Object[] A02;

    public C1X(Object[] alternatingKeysAndValues, int offset, int size) {
        this.A02 = alternatingKeysAndValues;
        this.A00 = offset;
        this.A01 = size;
    }

    @Override
    public final boolean A0K() {
        return true;
    }

    @Override
    public final Object get(int index) {
        AbstractC1977jA.A00(index, this.A01);
        return Objects.requireNonNull(this.A02[(index * 2) + this.A00]);
    }

    @Override
    public final int size() {
        return this.A01;
    }
}

package com.facebook.ads.redexgen.core;

import java.util.Map;

public class C1833gc<K, V> extends OY<K, V> {
    public final C1832gb A00;

    public C1833gc(C1832gb c1832gb) {
        this.A00 = c1832gb;
    }

    @Override
    public final int A04() {
        return ((C1126Ob) this.A00).A00;
    }

    @Override
    public final int A05(Object obj) {
        return this.A00.A08(obj);
    }

    @Override
    public final int A06(Object obj) {
        return this.A00.A07(obj);
    }

    @Override
    public final Map<K, V> A07() {
        return this.A00;
    }

    @Override
    public final Object A0B(int i, int i2) {
        return this.A00.A02[(i << 1) + i2];
    }

    @Override
    public final V A0C(int i, V value) {
        return this.A00.A0C(i, value);
    }

    @Override
    public final void A0D() {
        this.A00.clear();
    }

    @Override
    public final void A0E(int i) {
        this.A00.A0A(i);
    }

    @Override
    public final void A0F(K key, V value) {
        this.A00.put(key, value);
    }
}

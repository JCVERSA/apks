package com.facebook.ads.redexgen.core;

import java.util.AbstractMap;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;

public class C1Z<K, V> extends AbstractC0778Al<Map.Entry<K, V>> {
    public final transient int A00;
    public final transient int A01;
    public final transient AbstractC2183mj<K, V> A02;
    public final transient Object[] A03;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1Z != com.google.common.collect.RegularImmutableMap$EntrySet<K, V> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.mj != com.google.common.collect.ImmutableMap<K, V> */
    public C1Z(AbstractC2183mj<K, V> map, Object[] alternatingKeysAndValues, int keyOffset, int size) {
        this.A02 = map;
        this.A03 = alternatingKeysAndValues;
        this.A00 = keyOffset;
        this.A01 = size;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1Z != com.google.common.collect.RegularImmutableMap$EntrySet<K, V> */
    @Override
    public final int A0I(Object[] dst, int offset) {
        return A0J().A0I(dst, offset);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1Z != com.google.common.collect.RegularImmutableMap$EntrySet<K, V> */
    @Override
    public final boolean A0K() {
        return true;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1Z != com.google.common.collect.RegularImmutableMap$EntrySet<K, V> */
    @Override
    public final AbstractC0779Am<Map.Entry<K, V>> A0M() {
        return new AbstractC0779Am<Map.Entry<K, V>>() {
            @Override
            public final Map.Entry<K, V> get(int index) {
                AbstractC1977jA.A00(index, this.A00.A01);
                return new AbstractMap.SimpleImmutableEntry(Objects.requireNonNull(this.A00.A03[(index * 2) + this.A00.A00]), Objects.requireNonNull(this.A00.A03[(index * 2) + (this.A00.A00 ^ 1)]));
            }

            @Override
            public final boolean A0K() {
                return true;
            }

            @Override
            public final int size() {
                return this.A00.A01;
            }
        };
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1Z != com.google.common.collect.RegularImmutableMap$EntrySet<K, V> */
    @Override
    public final AbstractC2346pg<Map.Entry<K, V>> iterator() {
        return A0J().iterator();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1Z != com.google.common.collect.RegularImmutableMap$EntrySet<K, V> */
    @Override
    public final boolean contains(@CheckForNull Object object) {
        if (!(object instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) object;
        Object k = entry.getKey();
        Object value = entry.getValue();
        return value != null && value.equals(this.A02.get(k));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1Z != com.google.common.collect.RegularImmutableMap$EntrySet<K, V> */
    @Override
    public final int size() {
        return this.A01;
    }
}

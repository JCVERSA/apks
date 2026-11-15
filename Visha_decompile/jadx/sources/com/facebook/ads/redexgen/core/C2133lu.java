package com.facebook.ads.redexgen.core;

import java.util.AbstractCollection;
import java.util.Iterator;

public class C2133lu<V> extends AbstractCollection<V> {
    public final C2134lv A00;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.lu != com.google.common.collect.CompactHashMap<K, V>$ValuesView */
    public C2133lu(final C2134lv this$0) {
        this.A00 = this$0;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.lu != com.google.common.collect.CompactHashMap<K, V>$ValuesView */
    @Override
    public final void clear() {
        this.A00.clear();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.lu != com.google.common.collect.CompactHashMap<K, V>$ValuesView */
    @Override
    public final Iterator<V> iterator() {
        return this.A00.A0f();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.lu != com.google.common.collect.CompactHashMap<K, V>$ValuesView */
    @Override
    public final int size() {
        return this.A00.size();
    }
}

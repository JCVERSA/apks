package com.facebook.ads.redexgen.core;

import java.util.AbstractCollection;
import java.util.Iterator;
import javax.annotation.CheckForNull;

public class C2048kK<V> extends AbstractCollection<V> {
    public final BD A00;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.kK != com.google.common.collect.AbstractMultimap<K, V>$Values */
    public C2048kK(final BD this$0) {
        this.A00 = this$0;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.kK != com.google.common.collect.AbstractMultimap<K, V>$Values */
    @Override
    public final void clear() {
        this.A00.clear();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.kK != com.google.common.collect.AbstractMultimap<K, V>$Values */
    @Override
    public final boolean contains(@CheckForNull Object o) {
        return this.A00.A03(o);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.kK != com.google.common.collect.AbstractMultimap<K, V>$Values */
    @Override
    public final Iterator<V> iterator() {
        return this.A00.A0C();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.kK != com.google.common.collect.AbstractMultimap<K, V>$Values */
    @Override
    public final int size() {
        return this.A00.size();
    }
}

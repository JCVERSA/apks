package com.facebook.ads.redexgen.core;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

public class C2132lt<K> extends AbstractSet<K> {
    public final C2134lv A00;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.lt != com.google.common.collect.CompactHashMap<K, V>$KeySetView */
    public C2132lt(final C2134lv this$0) {
        this.A00 = this$0;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.lt != com.google.common.collect.CompactHashMap<K, V>$KeySetView */
    @Override
    public final void clear() {
        this.A00.clear();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.lt != com.google.common.collect.CompactHashMap<K, V>$KeySetView */
    @Override
    public final boolean contains(@CheckForNull Object o) {
        return this.A00.containsKey(o);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.lt != com.google.common.collect.CompactHashMap<K, V>$KeySetView */
    @Override
    public final Iterator<K> iterator() {
        return this.A00.A0e();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.lt != com.google.common.collect.CompactHashMap<K, V>$KeySetView */
    @Override
    public final boolean remove(@CheckForNull Object o) {
        Map mapA0h = this.A00.A0h();
        if (mapA0h != null) {
            return mapA0h.keySet().remove(o);
        }
        return this.A00.A0K(o) != C2134lv.A0B;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.lt != com.google.common.collect.CompactHashMap<K, V>$KeySetView */
    @Override
    public final int size() {
        return this.A00.size();
    }
}

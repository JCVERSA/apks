package com.facebook.ads.redexgen.core;

import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

public class C0769Ac<K, V> extends AbstractC2311oq<K> {
    public final Map<K, V> A00;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ac != com.google.common.collect.Maps$KeySet<K, V> */
    public C0769Ac(Map<K, V> map) {
        this.A00 = (Map) AbstractC1977jA.A04(map);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ac != com.google.common.collect.Maps$KeySet<K, V> */
    public Map<K, V> A00() {
        return this.A00;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ac != com.google.common.collect.Maps$KeySet<K, V> */
    @Override
    public void clear() {
        A00().clear();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ac != com.google.common.collect.Maps$KeySet<K, V> */
    @Override
    public boolean contains(@CheckForNull Object o) {
        return A00().containsKey(o);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ac != com.google.common.collect.Maps$KeySet<K, V> */
    @Override
    public final boolean isEmpty() {
        return A00().isEmpty();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ac != com.google.common.collect.Maps$KeySet<K, V> */
    @Override
    public Iterator<K> iterator() {
        return AbstractC2260nz.A02(A00().entrySet().iterator());
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ac != com.google.common.collect.Maps$KeySet<K, V> */
    @Override
    public boolean remove(@CheckForNull Object o) {
        if (contains(o)) {
            A00().remove(o);
            return true;
        }
        return false;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Ac != com.google.common.collect.Maps$KeySet<K, V> */
    @Override
    public final int size() {
        return A00().size();
    }
}

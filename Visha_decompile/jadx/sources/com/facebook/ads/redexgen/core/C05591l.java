package com.facebook.ads.redexgen.core;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

public class C05591l<K, V> extends C0769Ac<K, Collection<V>> {
    public final AbstractC05561i A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1l != com.google.common.collect.AbstractMapBasedMultimap<K, V>$KeySet */
    public C05591l(final AbstractC05561i this$0, final Map<K, Collection<V>> subMap) {
        super(subMap);
        this.A00 = this$0;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1l != com.google.common.collect.AbstractMapBasedMultimap<K, V>$KeySet */
    @Override
    public final void clear() {
        AbstractC2221nL.A0A(iterator());
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1l != com.google.common.collect.AbstractMapBasedMultimap<K, V>$KeySet */
    @Override
    public final boolean containsAll(Collection<?> c) {
        return A00().keySet().containsAll(c);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1l != com.google.common.collect.AbstractMapBasedMultimap<K, V>$KeySet */
    @Override
    public final boolean equals(@CheckForNull Object object) {
        return this == object || A00().keySet().equals(object);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1l != com.google.common.collect.AbstractMapBasedMultimap<K, V>$KeySet */
    @Override
    public final int hashCode() {
        return A00().keySet().hashCode();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1l != com.google.common.collect.AbstractMapBasedMultimap<K, V>$KeySet */
    @Override
    public final Iterator<K> iterator() {
        return new C2043kF(this, A00().entrySet().iterator());
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1l != com.google.common.collect.AbstractMapBasedMultimap<K, V>$KeySet */
    @Override
    public final boolean remove(@CheckForNull Object key) {
        int size = 0;
        Collection collection = (Collection) A00().remove(key);
        if (collection != null) {
            size = collection.size();
            collection.clear();
            AbstractC05561i.A03(this.A00, size);
        }
        return size > 0;
    }
}

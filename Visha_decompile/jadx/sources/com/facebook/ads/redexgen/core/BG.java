package com.facebook.ads.redexgen.core;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

public class BG<K, V> extends AbstractC2259ny<K, Collection<V>> {
    public final transient Map<K, Collection<V>> A00;
    public final AbstractC05561i A01;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BG != com.google.common.collect.AbstractMapBasedMultimap<K, V>$AsMap */
    public BG(final AbstractC05561i this$0, Map<K, Collection<V>> submap) {
        this.A01 = this$0;
        this.A00 = submap;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BG != com.google.common.collect.AbstractMapBasedMultimap<K, V>$AsMap */
    @Override
    @CheckForNull
    public final Collection<V> get(@CheckForNull Object key) {
        Collection<V> collection = (Collection) AbstractC2260nz.A05(this.A00, key);
        if (collection == null) {
            return null;
        }
        Collection<V> collection2 = this.A01.A0F(key, collection);
        return collection2;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BG != com.google.common.collect.AbstractMapBasedMultimap<K, V>$AsMap */
    @Override
    @CheckForNull
    public final Collection<V> remove(@CheckForNull Object key) {
        Collection<V> collectionRemove = this.A00.remove(key);
        if (collectionRemove == null) {
            return null;
        }
        Collection<V> collectionA0D = this.A01.A0D();
        collectionA0D.addAll(collectionRemove);
        AbstractC05561i.A03(this.A01, collectionRemove.size());
        collectionRemove.clear();
        return collectionA0D;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BG != com.google.common.collect.AbstractMapBasedMultimap<K, V>$AsMap */
    @Override
    public final Set<Map.Entry<K, Collection<V>>> A09() {
        return new AbstractC0770Ad<K, Collection<V>>() {
            public static String[] A01 = {"c", "Cderzo7kRJnvUqpU20WcBh2OZWVVjooT", "Z", "ZZrF4bQPE17IkUPu05dPNeIYxEP3htEV", "zoL9Bw1Syr4GOxCjTnDxY342EbanM9q3", "GegVcEhGdWXR", "86lf1o9WQgzrbD", "NgZwPtD5hXQhY3eRyOKbKp0yAyP86bbs"};

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1m != com.google.common.collect.AbstractMapBasedMultimap<K, V>$AsMap$AsMapEntries */
            @Override
            public final Map<K, Collection<V>> A00() {
                return this.A00;
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1m != com.google.common.collect.AbstractMapBasedMultimap<K, V>$AsMap$AsMapEntries */
            @Override
            public final boolean contains(@CheckForNull Object o) {
                return AbstractC2129lq.A03(this.A00.A00.entrySet(), o);
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1m != com.google.common.collect.AbstractMapBasedMultimap<K, V>$AsMap$AsMapEntries */
            @Override
            public final Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new C2041kD(this.A00);
            }

            /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.1m != com.google.common.collect.AbstractMapBasedMultimap<K, V>$AsMap$AsMapEntries */
            @Override
            public final boolean remove(@CheckForNull Object o) {
                if (!contains(o)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) Objects.requireNonNull((Map.Entry) o);
                BG bg = this.A00;
                if (A01[2].length() == 19) {
                    throw new RuntimeException();
                }
                A01[3] = "G2qcJwlII5HIikaXRsYLysr3qmkTj7oM";
                bg.A01.A0A(entry.getKey());
                return true;
            }
        };
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BG != com.google.common.collect.AbstractMapBasedMultimap<K, V>$AsMap */
    public final Map.Entry<K, Collection<V>> A0A(Map.Entry<K, Collection<V>> entry) {
        K key = entry.getKey();
        return AbstractC2260nz.A01(key, this.A01.A0F(key, entry.getValue()));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BG != com.google.common.collect.AbstractMapBasedMultimap<K, V>$AsMap */
    @Override
    public final void clear() {
        if (this.A00 == this.A01.A01) {
            this.A01.clear();
        } else {
            AbstractC2221nL.A0A(new C2041kD(this));
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BG != com.google.common.collect.AbstractMapBasedMultimap<K, V>$AsMap */
    @Override
    public final boolean containsKey(@CheckForNull Object key) {
        return AbstractC2260nz.A0C(this.A00, key);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BG != com.google.common.collect.AbstractMapBasedMultimap<K, V>$AsMap */
    @Override
    public final boolean equals(@CheckForNull Object object) {
        return this == object || this.A00.equals(object);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BG != com.google.common.collect.AbstractMapBasedMultimap<K, V>$AsMap */
    @Override
    public final int hashCode() {
        return this.A00.hashCode();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BG != com.google.common.collect.AbstractMapBasedMultimap<K, V>$AsMap */
    @Override
    public Set<K> keySet() {
        return this.A01.A01();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BG != com.google.common.collect.AbstractMapBasedMultimap<K, V>$AsMap */
    @Override
    public final int size() {
        return this.A00.size();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.BG != com.google.common.collect.AbstractMapBasedMultimap<K, V>$AsMap */
    @Override
    public final String toString() {
        return this.A00.toString();
    }
}

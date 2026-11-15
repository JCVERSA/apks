package com.facebook.ads.redexgen.core;

import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;

public class AZ<K0> extends AbstractC2276oF<K0> {
    public final Comparator A00;

    public AZ(final Comparator val$comparator) {
        this.A00 = val$comparator;
    }

    @Override
    public final <K extends K0, V> Map<K, Collection<V>> A04() {
        return new TreeMap(this.A00);
    }
}

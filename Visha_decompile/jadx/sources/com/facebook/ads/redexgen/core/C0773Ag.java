package com.facebook.ads.redexgen.core;

import com.google.common.collect.ParametricNullness;
import java.util.Iterator;
import java.util.Map;

public class C0773Ag<K, V> extends AbstractC2340pV<Map.Entry<K, V>, K> {
    public C0773Ag(Iterator backingIterator) {
        super(backingIterator);
    }

    @Override
    @ParametricNullness
    public final K A01(Map.Entry<K, V> entry) {
        return entry.getKey();
    }
}

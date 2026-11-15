package com.facebook.ads.redexgen.core;

import com.google.common.collect.ParametricNullness;
import java.util.Iterator;
import java.util.Map;

public class C0772Af<K, V> extends AbstractC2340pV<Map.Entry<K, V>, V> {
    public C0772Af(Iterator backingIterator) {
        super(backingIterator);
    }

    @Override
    @ParametricNullness
    public final V A01(Map.Entry<K, V> entry) {
        return entry.getValue();
    }
}

package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.List;

public final class C2436b9 extends AbstractC2461c9 {
    public final List a;

    public C2436b9(List<Object> list) {
        this.a = CollectionUtils.unmodifiableListCopy(list);
    }

    public final List<Object> a() {
        return this.a;
    }
}

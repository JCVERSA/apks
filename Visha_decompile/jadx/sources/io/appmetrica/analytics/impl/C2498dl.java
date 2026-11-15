package io.appmetrica.analytics.impl;

import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.ListConverter;
import java.util.Iterator;
import java.util.List;

public final class C2498dl implements ListConverter {
    public final C2523el a = new C2523el();

    @Override
    @NonNull
    public final C2657k6[] fromModel(@NonNull List<C2548fl> list) {
        C2657k6[] c2657k6Arr = new C2657k6[list.size()];
        Iterator<C2548fl> it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            c2657k6Arr[i] = this.a.fromModel(it.next());
            i++;
        }
        return c2657k6Arr;
    }

    @Override
    @NonNull
    public final Object toModel(Object obj) {
        throw new UnsupportedOperationException();
    }

    @NonNull
    public final List<C2548fl> a(C2657k6[] c2657k6Arr) {
        throw new UnsupportedOperationException();
    }
}

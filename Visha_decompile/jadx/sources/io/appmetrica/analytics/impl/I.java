package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.backport.Provider;

public final class I implements Provider {
    public final Context a;
    public final K b;

    public I(K k, Context context) {
        this.b = k;
        this.a = context;
    }

    @Override
    public final Object get() {
        return this.b.a.a(this.a);
    }
}

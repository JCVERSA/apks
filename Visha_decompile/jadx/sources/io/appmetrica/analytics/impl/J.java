package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.backport.Provider;

public final class J implements Provider {
    public final Context a;
    public final InterfaceC2968wi b;
    public final K c;

    public J(K k, Context context, InterfaceC2968wi interfaceC2968wi) {
        this.c = k;
        this.a = context;
        this.b = interfaceC2968wi;
    }

    @Override
    public final Object get() {
        return this.c.a.a(this.a, this.b);
    }
}

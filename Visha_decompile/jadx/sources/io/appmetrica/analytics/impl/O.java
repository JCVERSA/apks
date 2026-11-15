package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.c74;
import kotlin.jvm.internal.Lambda;

public final class O extends Lambda implements c74 {
    public final Q a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public O(Q q) {
        super(0);
        this.a = q;
    }

    @Override
    public final Object invoke() {
        Q q = this.a;
        K k = q.g;
        Context context = q.a;
        k.getClass();
        return K.a(new I(k, context));
    }
}

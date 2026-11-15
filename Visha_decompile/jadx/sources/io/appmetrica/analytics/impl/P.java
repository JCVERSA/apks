package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.c74;
import kotlin.jvm.internal.Lambda;

public final class P extends Lambda implements c74 {
    public final Q a;
    public final InterfaceC2968wi b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public P(Q q, InterfaceC2968wi interfaceC2968wi) {
        super(0);
        this.a = q;
        this.b = interfaceC2968wi;
    }

    @Override
    public final Object invoke() {
        Q q = this.a;
        K k = q.h;
        Context context = q.a;
        InterfaceC2968wi interfaceC2968wi = this.b;
        k.getClass();
        return K.a(new J(k, context, interfaceC2968wi));
    }
}

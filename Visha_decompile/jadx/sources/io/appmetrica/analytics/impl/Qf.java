package io.appmetrica.analytics.impl;

import defpackage.c74;
import kotlin.jvm.internal.Lambda;

public final class Qf extends Lambda implements c74 {
    public final Rf a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Qf(Rf rf) {
        super(0);
        this.a = rf;
    }

    @Override
    public final Object invoke() {
        return new Pf(this.a);
    }
}

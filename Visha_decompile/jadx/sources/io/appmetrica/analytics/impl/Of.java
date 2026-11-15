package io.appmetrica.analytics.impl;

import defpackage.c74;
import kotlin.jvm.internal.Lambda;

public final class Of extends Lambda implements c74 {
    public final Rf a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Of(Rf rf) {
        super(0);
        this.a = rf;
    }

    @Override
    public final Object invoke() {
        return new Nf(this.a);
    }
}

package io.appmetrica.analytics.impl;

import defpackage.c74;
import kotlin.jvm.internal.Lambda;

public final class Cb extends Lambda implements c74 {
    public final Db a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Cb(Db db) {
        super(0);
        this.a = db;
    }

    @Override
    public final Object invoke() {
        return (C2469ch) this.a.a.k.a();
    }
}

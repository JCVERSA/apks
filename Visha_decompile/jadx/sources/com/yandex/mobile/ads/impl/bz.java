package com.yandex.mobile.ads.impl;

import defpackage.c74;
import kotlin.jvm.internal.Lambda;

final class bz extends Lambda implements c74 {
    final cz b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bz(cz czVar) {
        super(0);
        this.b = czVar;
    }

    @Override
    public final Object invoke() {
        return Long.valueOf(this.b.a.toMillis(cz.a(this.b)));
    }
}

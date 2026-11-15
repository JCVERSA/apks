package com.yandex.mobile.ads.impl;

import defpackage.c74;
import kotlin.jvm.internal.Lambda;

final class a61 extends Lambda implements c74 {
    final sj0 b;
    final xj0 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a61(sj0 sj0Var, xj0 xj0Var) {
        super(0);
        this.b = sj0Var;
        this.c = xj0Var;
    }

    @Override
    public final Object invoke() {
        return this.b.b(this.c);
    }
}

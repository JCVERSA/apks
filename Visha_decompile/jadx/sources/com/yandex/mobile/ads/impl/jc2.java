package com.yandex.mobile.ads.impl;

import defpackage.c74;
import defpackage.zfb;
import kotlin.jvm.internal.Lambda;

final class jc2 extends Lambda implements c74 {
    final lc2 b;
    final dq1<ki2> c;
    final oi2 d;
    final Object e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jc2(lc2 lc2Var, sm0 sm0Var, oi2 oi2Var, Object obj) {
        super(0);
        this.b = lc2Var;
        this.c = sm0Var;
        this.d = oi2Var;
        this.e = obj;
    }

    @Override
    public final Object invoke() {
        qi2 qi2Var = new qi2(this.b.b, this.c);
        g5 g5Var = this.b.b;
        f5 f5Var = f5.y;
        bk.a(g5Var, f5Var, "adLoadingPhaseType", f5Var, null);
        this.b.c.a(this.b.g, this.b.a, this.d, this.e, qi2Var);
        return zfb.a;
    }
}

package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class qk2 implements dq1<List<? extends mb2>> {
    private final dq1<List<mb2>> a;
    private final rk2 b;

    public qk2(Context context, mb2 mb2Var, dq1<List<mb2>> dq1Var, rk2 rk2Var) {
        y45.j(context, "context");
        y45.j(mb2Var, "wrapperAd");
        y45.j(dq1Var, "requestListener");
        y45.j(rk2Var, "wrapperAdResponseConfigurator");
        this.a = dq1Var;
        this.b = rk2Var;
    }

    @Override
    public final void a(sb2 sb2Var) {
        y45.j(sb2Var, "error");
        this.a.a(sb2Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void a(List<? extends mb2> list) {
        List<? extends mb2> list2 = list;
        y45.j(list2, "response");
        this.a.a(this.b.a(list2));
    }
}

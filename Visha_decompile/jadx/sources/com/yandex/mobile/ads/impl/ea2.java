package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.List;

public final class ea2 implements dq1<List<? extends mb2>> {
    private final p2 a;
    private final dq1<gt> b;
    private final ho0 c;

    public ea2(Context context, bv1 bv1Var, p2 p2Var, dq1<gt> dq1Var, ho0 ho0Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(p2Var, "adBreak");
        y45.j(dq1Var, "instreamAdBreakRequestListener");
        y45.j(ho0Var, "instreamVideoAdBreakCreator");
        this.a = p2Var;
        this.b = dq1Var;
        this.c = ho0Var;
    }

    @Override
    public final void a(sb2 sb2Var) {
        y45.j(sb2Var, "error");
        this.b.a(sb2Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void a(List<? extends mb2> list) {
        List<? extends mb2> list2 = list;
        y45.j(list2, "result");
        gt gtVarA = this.c.a(this.a, list2);
        if (gtVarA != null) {
            this.b.a(gtVarA);
            return;
        }
        y45.j("Failed to parse ad break", "description");
        this.b.a(new sb2(1, "Failed to parse ad break"));
    }
}

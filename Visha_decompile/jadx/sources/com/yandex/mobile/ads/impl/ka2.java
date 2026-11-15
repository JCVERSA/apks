package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.mobile.ads.impl.ka2;
import defpackage.y45;
import java.util.List;

public final class ka2 implements dq1<z92> {
    private final dq1<List<mb2>> a;
    private final qa2 b;

    public ka2(Context context, bv1 bv1Var, ea2 ea2Var, qa2 qa2Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(ea2Var, "adsRequestListener");
        y45.j(qa2Var, "verificationResourcesLoader");
        this.a = ea2Var;
        this.b = qa2Var;
    }

    @Override
    public final void a(sb2 sb2Var) {
        y45.j(sb2Var, "error");
        this.a.a(sb2Var);
    }

    @Override
    public final void a(z92 z92Var) {
        y45.j(z92Var, "result");
        final List<mb2> listB = z92Var.b().b();
        this.b.a(listB, new cb2() {
            @Override
            public final void a() {
                ka2.a(this.a, listB);
            }
        });
    }

    public static final void a(ka2 ka2Var, List list) {
        y45.j(ka2Var, "this$0");
        y45.j(list, "$videoAds");
        ka2Var.a.a(list);
    }
}

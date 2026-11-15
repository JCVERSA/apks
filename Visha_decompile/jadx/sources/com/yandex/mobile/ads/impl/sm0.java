package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;

public final class sm0 implements dq1<ki2>, yl0.a {
    private final a a;
    private final yl0 b;
    private final s40 c;
    private final Context d;

    public interface a {
        void a(et etVar);

        void a(String str);
    }

    public sm0(Context context, bv1 bv1Var, fc2 fc2Var, um0 um0Var) {
        this(context, bv1Var, fc2Var, um0Var, new yl0(bv1Var, fc2Var), new s40());
    }

    @Override
    public final void a(sb2 sb2Var) {
        y45.j(sb2Var, "error");
        this.a.a(sb2Var.a());
    }

    @Override
    public final void a(ArrayList arrayList) {
        y45.j(arrayList, "adBreaks");
        this.c.getClass();
        ArrayList arrayListA = s40.a(arrayList);
        if (!arrayListA.isEmpty()) {
            this.a.a(new et(arrayListA));
        } else {
            this.a.a("Received response with no ad breaks");
        }
    }

    public sm0(Context context, bv1 bv1Var, fc2 fc2Var, um0 um0Var, yl0 yl0Var, s40 s40Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(fc2Var, "videoAdLoader");
        y45.j(um0Var, "instreamAdLoadListener");
        y45.j(yl0Var, "adBreaksLoadingManager");
        y45.j(s40Var, "duplicatedInstreamAdBreaksFilter");
        this.a = um0Var;
        this.b = yl0Var;
        this.c = s40Var;
        this.d = context.getApplicationContext();
    }

    @Override
    public final void a(ki2 ki2Var) {
        ki2 ki2Var2 = ki2Var;
        y45.j(ki2Var2, "vmap");
        List<p2> listA = ki2Var2.a();
        ArrayList arrayList = new ArrayList();
        for (p2 p2Var : listA) {
            if (p2Var.d().contains("linear")) {
                arrayList.add(p2Var);
            }
        }
        if (!arrayList.isEmpty()) {
            yl0 yl0Var = this.b;
            Context context = this.d;
            y45.i(context, "context");
            yl0Var.a(context, arrayList, this);
            return;
        }
        this.a.a("Received response with no ad breaks");
    }
}

package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.lzy.okgo.model.Progress;
import defpackage.y45;
import java.lang.ref.WeakReference;
import kotlin.NoWhenBranchMatchedException;

public final class y3 {
    private final gq1 a;
    private final WeakReference<ck<?>> b;

    public static final class a {
        public static w3 a(o3 o3Var, x3 x3Var) {
            y45.j(x3Var, "adFetchStatus");
            switch (x3Var.ordinal()) {
                case 0:
                case 5:
                    int i = w7.A;
                    return w7.a(o3Var != null ? o3Var.c() : null);
                case 1:
                    return w7.k();
                case 2:
                    return w7.q();
                case 3:
                    return w7.j();
                case 4:
                    return w7.v();
                case 6:
                    return w7.h();
                case 7:
                    return w7.g();
                case 8:
                    return w7.u();
                case 9:
                    return w7.p();
                case 10:
                    return w7.w();
                case 11:
                    return w7.a();
                case 12:
                    return w7.c();
                case 13:
                    return w7.r();
                case 14:
                    return w7.n();
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
    }

    public y3(ck<?> ckVar, gq1 gq1Var, WeakReference<ck<?>> weakReference) {
        y45.j(ckVar, "loadController");
        y45.j(gq1Var, "requestManager");
        y45.j(weakReference, "loadControllerRef");
        this.a = gq1Var;
        this.b = weakReference;
    }

    public final void a() {
        ck<?> ckVar = this.b.get();
        if (ckVar != null) {
            gq1 gq1Var = this.a;
            Context contextL = ckVar.l();
            String strA = oa.a(ckVar);
            gq1Var.getClass();
            gq1.a(contextL, strA);
        }
    }

    public final void b() {
        a();
        this.b.clear();
    }

    public final void a(ak<?> akVar) {
        y45.j(akVar, Progress.REQUEST);
        ck<?> ckVar = this.b.get();
        if (ckVar != null) {
            gq1 gq1Var = this.a;
            Context contextL = ckVar.l();
            synchronized (gq1Var) {
                y45.j(contextL, "context");
                y45.j(akVar, Progress.REQUEST);
                hd1.a(contextL).a(akVar);
            }
        }
    }
}

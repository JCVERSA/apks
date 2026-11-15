package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Context;
import com.yandex.mobile.ads.impl.zd0;
import defpackage.y45;
import kotlin.Result;

public final class fv1<T extends zd0<T>> implements cd0<T> {
    private final jd0<T> a;
    private final xt1 b;
    private final jv1<gv1> c;
    private gv1 d;

    public fv1(jd0 jd0Var, bv1 bv1Var) {
        o3 o3VarF = jd0Var.f();
        ud0 ud0Var = new ud0();
        hv1 hv1Var = new hv1(jd0Var.l(), bv1Var, o3VarF);
        this(jd0Var, bv1Var, o3VarF, ud0Var, hv1Var, new xt1(o3VarF), new jv1(o3VarF, ud0Var, hv1Var));
    }

    @Override
    public final String getAdInfo() {
        gv1 gv1Var = this.d;
        if (gv1Var != null) {
            return gv1Var.e();
        }
        return null;
    }

    @Override
    public final void a(Context context) {
        y45.j(context, "context");
        sp0.d(new Object[0]);
        this.c.a();
        gv1 gv1Var = this.d;
        if (gv1Var != null) {
            gv1Var.d();
        }
        this.d = null;
    }

    public final class a implements kv1<gv1> {
        public a() {
        }

        @Override
        public final void a(gv1 gv1Var) {
            gv1 gv1Var2 = gv1Var;
            y45.j(gv1Var2, "ad");
            ((fv1) fv1.this).d = gv1Var2;
            ((fv1) fv1.this).a.u();
        }

        @Override
        public final void a(w3 w3Var) {
            y45.j(w3Var, "adFetchRequestError");
            ((fv1) fv1.this).a.b(w3Var);
        }
    }

    public fv1(jd0<T> jd0Var, bv1 bv1Var, o3 o3Var, ud0 ud0Var, hv1 hv1Var, xt1 xt1Var, jv1<gv1> jv1Var) {
        y45.j(jd0Var, "loadController");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o3Var, "adConfiguration");
        y45.j(ud0Var, "fullscreenAdSizeValidator");
        y45.j(hv1Var, "fullscreenHtmlAdCreateController");
        y45.j(xt1Var, "sdkAdapterReporter");
        y45.j(jv1Var, "htmlAdCreationHandler");
        this.a = jd0Var;
        this.b = xt1Var;
        this.c = jv1Var;
    }

    @Override
    public final void a(Context context, o8<String> o8Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        g5 g5VarI = this.a.i();
        f5 f5Var = f5.c;
        bk.a(g5VarI, f5Var, "adLoadingPhaseType", f5Var, null);
        this.b.a(context, o8Var, (t71) null);
        this.b.a(context, o8Var);
        this.c.a(context, o8Var, new a());
    }

    @Override
    public final Object a(T t, Activity activity) {
        y45.j(t, "contentController");
        y45.j(activity, "activity");
        Result.Companion companion = Result.INSTANCE;
        Object objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(r6.a()));
        gv1 gv1Var = this.d;
        if (gv1Var == null) {
            return objM279constructorimpl;
        }
        Object objA = gv1Var.a(activity, t.i());
        this.d = null;
        return objA;
    }
}

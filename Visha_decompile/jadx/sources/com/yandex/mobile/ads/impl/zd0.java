package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import com.yandex.mobile.ads.impl.zd0;
import defpackage.y45;
import java.io.Serializable;
import java.util.Map;
import kotlin.Result;

public abstract class zd0<T extends zd0<T>> extends h62 {
    private final o3 k;
    private final vc0 l;
    private final cd0<T> m;
    private final w4 n;
    private final od0 o;
    private final g5 p;
    private final j32 q;
    private final t7 r;
    private nd0 s;

    public zd0(Context context, o8 o8Var, o3 o3Var, vc0 vc0Var, cd0 cd0Var, w4 w4Var) {
        od0 od0Var = new od0();
        g5 g5Var = new g5();
        int i = j32.d;
        j32 j32VarA = j32.a.a();
        sg0 sg0Var = new sg0();
        sg0Var.a((o8<String>) o8Var);
        sg0Var.a(o3Var);
        this(context, o8Var, o3Var, vc0Var, cd0Var, w4Var, od0Var, g5Var, j32VarA, new t7(context, o8Var, o3Var, g5Var, sg0Var));
    }

    @Override
    public final boolean a(int i) {
        return true;
    }

    @Override
    public final boolean k() {
        return true;
    }

    @Override
    public final boolean l() {
        return true;
    }

    public final ss n() {
        w4 w4Var = this.n;
        Context contextE = e();
        o8<T> o8VarD = d();
        o3 o3Var = this.k;
        String adInfo = this.m.getAdInfo();
        w4Var.getClass();
        y45.j(contextE, "context");
        y45.j(o8VarD, "adResponse");
        y45.j(o3Var, "adConfiguration");
        String strP = o8VarD.p();
        if (strP == null && (strP = o3Var.c()) == null) {
            strP = "";
        }
        gz1 gz1VarM = o8VarD.M();
        if (gz1VarM.getWidth() == 0 || gz1VarM.getHeight() == 0) {
            gz1VarM = null;
        }
        return new ss(strP, gz1VarM != null ? new h9(gz1VarM.c(contextE), gz1VarM.a(contextE)) : null, adInfo);
    }

    public abstract T o();

    @Override
    public final void onLeftApplication() {
        nd0 nd0Var = this.s;
        if (nd0Var != null) {
            nd0Var.onAdClicked();
        }
    }

    @Override
    public final void onReturnedToApplication() {
    }

    public final void p() {
        h();
        this.q.a(xq0.c, this);
        nd0 nd0Var = this.s;
        if (nd0Var != null) {
            nd0Var.onAdDismissed();
        }
    }

    public final void q() {
        nd0 nd0Var = this.s;
        if (nd0Var != null) {
            nd0Var.onAdShown();
        }
    }

    @Override
    public final void a(t4 t4Var) {
        nd0 nd0Var = this.s;
        if (nd0Var != null) {
            nd0Var.a(t4Var);
        }
    }

    @Override
    public void a(int i, Bundle bundle) {
        getClass().toString();
        sp0.d(new Object[0]);
        Map<String, String> map = null;
        map = null;
        if (i == 0) {
            if (bundle != null) {
                Serializable serializable = bundle.getSerializable("extra_tracking_parameters");
                if (serializable instanceof Map) {
                    map = (Map) serializable;
                }
            }
            this.p.a(f5.f);
            this.r.a();
            q();
            od0 od0Var = this.o;
            o8<T> o8VarD = d();
            od0Var.getClass();
            if (o8VarD == null || o8VarD.v() != is.c) {
                a(map);
                return;
            }
            return;
        }
        if (i == 16) {
            if (bundle != null) {
                Parcelable parcelable = bundle.getParcelable("impression_data_key");
                a(parcelable instanceof t4 ? (t4) parcelable : null);
                return;
            } else {
                a((t4) null);
                return;
            }
        }
        if (i == 17) {
            nd0 nd0Var = this.s;
            if (nd0Var != null) {
                nd0Var.onAdClicked();
                return;
            }
            return;
        }
        if (i == 2) {
            this.l.a(0);
            b(0);
        } else if (i == 3) {
            this.l.a(8);
            b(8);
        } else if (i == 4) {
            p();
        } else if (i != 5) {
            super.a(i, bundle);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zd0(Context context, o8<String> o8Var, o3 o3Var, vc0 vc0Var, cd0<T> cd0Var, w4 w4Var, od0 od0Var, g5 g5Var, j32 j32Var, t7 t7Var) {
        super(context, vc0Var, o8Var, o3Var);
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(vc0Var, "fullScreenAdVisibilityValidator");
        y45.j(cd0Var, "fullScreenController");
        y45.j(w4Var, "adInfoMapper");
        y45.j(od0Var, "fullScreenTrackingController");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(j32Var, "strongReferenceKeepingManager");
        y45.j(t7Var, "adRenderingResultReporter");
        this.k = o3Var;
        this.l = vc0Var;
        this.m = cd0Var;
        this.n = w4Var;
        this.o = od0Var;
        this.p = g5Var;
        this.q = j32Var;
        this.r = t7Var;
        o1.b.a().a("window_type_fullscreen", new h1());
    }

    public final void a(nd0 nd0Var) {
        y45.j(nd0Var, "listener");
        this.s = nd0Var;
    }

    public final Object a(Activity activity) {
        y45.j(activity, "activity");
        g();
        Result.Companion companion = Result.INSTANCE;
        Result.m279constructorimpl(kotlin.c.a(r6.a()));
        synchronized (this) {
        }
        g5 g5Var = this.p;
        f5 f5Var = f5.f;
        bk.a(g5Var, f5Var, "adLoadingPhaseType", f5Var, null);
        j32 j32Var = this.q;
        xq0 xq0Var = xq0.c;
        j32Var.b(xq0Var, this);
        Object objA = this.m.a(o(), activity);
        if (Result.m282exceptionOrNullimpl(objA) != null) {
            this.p.a(f5Var);
            if (!oa.a((ro) this)) {
                this.q.a(xq0Var, this);
                this.m.a(e());
                super.c();
            }
        }
        return objA;
    }
}

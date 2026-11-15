package com.yandex.mobile.ads.impl;

import android.app.Activity;
import android.content.Context;
import com.monetization.ads.mediation.rewarded.MediatedRewardedAdapter;
import com.monetization.ads.mediation.rewarded.MediatedRewardedAdapterListener;
import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Result;

public final class zy0 implements cd0<bs1> {
    private final jd0<bs1> a;
    private final rx0<MediatedRewardedAdapter, MediatedRewardedAdapterListener> b;
    private final bz0 c;
    private final js1 d;
    private final gy0 e;

    public zy0(jd0<bs1> jd0Var, o8<String> o8Var, hz0 hz0Var) {
        y45.j(jd0Var, "loadController");
        y45.j(o8Var, "adResponse");
        y45.j(hz0Var, "mediationData");
        this.a = jd0Var;
        o3 o3VarF = jd0Var.f();
        ly0 ly0Var = new ly0(o3VarF);
        gy0 gy0Var = new gy0(o3VarF, o8Var);
        this.e = gy0Var;
        az0 az0Var = new az0(new zx0(hz0Var.c(), ly0Var, gy0Var));
        g5 g5VarI = jd0Var.i();
        ig1 ig1Var = new ig1(jd0Var, hz0Var, g5VarI);
        bz0 bz0Var = new bz0();
        this.c = bz0Var;
        rx0<MediatedRewardedAdapter, MediatedRewardedAdapterListener> rx0Var = new rx0<>(o3VarF, g5VarI, bz0Var, gy0Var, az0Var, ig1Var);
        this.b = rx0Var;
        this.d = new js1(jd0Var, rx0Var);
    }

    @Override
    public final void a(Context context) {
        y45.j(context, "context");
        this.a.j().d();
        this.b.a(context);
    }

    @Override
    public final String getAdInfo() {
        return null;
    }

    @Override
    public final void a(Context context, o8<String> o8Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        this.b.a(context, this.d);
    }

    @Override
    public final Object a(zd0 zd0Var, Activity activity) {
        Object objM279constructorimpl;
        qx0<T> qx0VarA;
        bs1 bs1Var = (bs1) zd0Var;
        y45.j(bs1Var, "contentController");
        y45.j(activity, "activity");
        try {
            Result.Companion companion = Result.INSTANCE;
            MediatedRewardedAdapter mediatedRewardedAdapterA = this.c.a();
            if (mediatedRewardedAdapterA != null) {
                this.d.a(bs1Var);
                this.a.j().c();
                mediatedRewardedAdapterA.showRewardedAd(activity);
            }
            objM279constructorimpl = Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null && (qx0VarA = this.b.a()) != 0) {
            Context applicationContext = activity.getApplicationContext();
            y45.i(applicationContext, "getApplicationContext(...)");
            sp0.c(new Object[0]);
            this.e.a(applicationContext, qx0VarA.c(), ky5.h(abb.a("reason", ky5.h(abb.a("exception_in_adapter", thM282exceptionOrNullimpl.toString())))), qx0VarA.a().b().getNetworkName());
        }
        return objM279constructorimpl;
    }
}

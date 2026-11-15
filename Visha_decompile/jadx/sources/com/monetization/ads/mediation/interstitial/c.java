package com.monetization.ads.mediation.interstitial;

import android.app.Activity;
import android.content.Context;
import com.yandex.mobile.ads.impl.cd0;
import com.yandex.mobile.ads.impl.g5;
import com.yandex.mobile.ads.impl.gy0;
import com.yandex.mobile.ads.impl.hz0;
import com.yandex.mobile.ads.impl.ig1;
import com.yandex.mobile.ads.impl.jd0;
import com.yandex.mobile.ads.impl.ly0;
import com.yandex.mobile.ads.impl.o3;
import com.yandex.mobile.ads.impl.o8;
import com.yandex.mobile.ads.impl.py0;
import com.yandex.mobile.ads.impl.qx0;
import com.yandex.mobile.ads.impl.rx0;
import com.yandex.mobile.ads.impl.sp0;
import com.yandex.mobile.ads.impl.zd0;
import com.yandex.mobile.ads.impl.zx0;
import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Result;

public final class c<T extends zd0<T>> implements cd0<T> {
    private final jd0<T> a;
    private final rx0<MediatedInterstitialAdapter, MediatedInterstitialAdapter.MediatedInterstitialAdapterListener> b;
    private final b c;
    private final a<T> d;
    private final gy0 e;

    public c(jd0<T> jd0Var, o8<String> o8Var, hz0 hz0Var) {
        y45.j(jd0Var, "loadController");
        y45.j(o8Var, "adResponse");
        y45.j(hz0Var, "mediationData");
        this.a = jd0Var;
        o3 o3VarF = jd0Var.f();
        ly0 ly0Var = new ly0(o3VarF);
        gy0 gy0Var = new gy0(o3VarF, o8Var);
        this.e = gy0Var;
        py0 py0Var = new py0(new zx0(hz0Var.c(), ly0Var, gy0Var));
        g5 g5VarI = jd0Var.i();
        ig1 ig1Var = new ig1(jd0Var, hz0Var, g5VarI);
        b bVar = new b();
        this.c = bVar;
        rx0<MediatedInterstitialAdapter, MediatedInterstitialAdapter.MediatedInterstitialAdapterListener> rx0Var = new rx0<>(o3VarF, g5VarI, bVar, gy0Var, py0Var, ig1Var);
        this.b = rx0Var;
        this.d = new a<>(jd0Var, rx0Var);
    }

    @Override
    public final void a(Context context, o8<String> o8Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        this.b.a(context, this.d);
    }

    @Override
    public final String getAdInfo() {
        return null;
    }

    @Override
    public final Object a(T t, Activity activity) {
        Object objM279constructorimpl;
        qx0<T> qx0VarA;
        y45.j(t, "contentController");
        y45.j(activity, "activity");
        try {
            Result.Companion companion = Result.INSTANCE;
            MediatedInterstitialAdapter mediatedInterstitialAdapterA = this.c.a();
            if (mediatedInterstitialAdapterA != null) {
                this.d.a(t);
                this.a.j().c();
                mediatedInterstitialAdapterA.showInterstitial(activity);
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

    @Override
    public final void a(Context context) {
        y45.j(context, "context");
        this.a.j().d();
        this.b.a(context);
    }
}

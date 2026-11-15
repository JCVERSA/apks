package com.monetization.ads.mediation.appopenad;

import android.app.Activity;
import android.content.Context;
import com.yandex.mobile.ads.impl.cd0;
import com.yandex.mobile.ads.impl.gy0;
import com.yandex.mobile.ads.impl.o8;
import com.yandex.mobile.ads.impl.qx0;
import com.yandex.mobile.ads.impl.rx0;
import com.yandex.mobile.ads.impl.sp0;
import com.yandex.mobile.ads.impl.zd0;
import defpackage.abb;
import defpackage.ky5;
import defpackage.y45;
import defpackage.zfb;
import kotlin.Result;

public final class b<T extends zd0<T>> implements cd0<T> {
    private final rx0<MediatedAppOpenAdAdapter, MediatedAppOpenAdAdapter.MediatedAppOpenAdAdapterListener> a;
    private final c b;
    private final a<T> c;
    private final gy0 d;

    public b(rx0<MediatedAppOpenAdAdapter, MediatedAppOpenAdAdapter.MediatedAppOpenAdAdapterListener> rx0Var, c cVar, a<T> aVar, gy0 gy0Var) {
        y45.j(rx0Var, "mediatedAdController");
        y45.j(cVar, "mediatedAppOpenAdLoader");
        y45.j(aVar, "mediatedAppOpenAdAdapterListener");
        y45.j(gy0Var, "mediatedAdapterReporter");
        this.a = rx0Var;
        this.b = cVar;
        this.c = aVar;
        this.d = gy0Var;
    }

    @Override
    public final void a(Context context, o8<String> o8Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        this.a.a(context, this.c);
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
            MediatedAppOpenAdAdapter mediatedAppOpenAdAdapterA = this.b.a();
            if (mediatedAppOpenAdAdapterA != null) {
                this.c.a(t);
                mediatedAppOpenAdAdapterA.showAppOpenAd(activity);
            }
            objM279constructorimpl = Result.m279constructorimpl(zfb.a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        Throwable thM282exceptionOrNullimpl = Result.m282exceptionOrNullimpl(objM279constructorimpl);
        if (thM282exceptionOrNullimpl != null && (qx0VarA = this.a.a()) != 0) {
            Context applicationContext = activity.getApplicationContext();
            y45.i(applicationContext, "getApplicationContext(...)");
            sp0.c(new Object[0]);
            this.d.a(applicationContext, qx0VarA.c(), ky5.h(abb.a("reason", ky5.h(abb.a("exception_in_adapter", thM282exceptionOrNullimpl.toString())))), qx0VarA.a().b().getNetworkName());
        }
        return objM279constructorimpl;
    }

    @Override
    public final void a(Context context) {
        y45.j(context, "context");
        this.a.a(context);
    }
}

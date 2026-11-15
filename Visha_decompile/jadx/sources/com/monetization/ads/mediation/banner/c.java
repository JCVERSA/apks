package com.monetization.ads.mediation.banner;

import android.app.Activity;
import android.content.Context;
import com.yandex.mobile.ads.impl.aj;
import com.yandex.mobile.ads.impl.ej;
import com.yandex.mobile.ads.impl.g5;
import com.yandex.mobile.ads.impl.gy0;
import com.yandex.mobile.ads.impl.hz0;
import com.yandex.mobile.ads.impl.ig1;
import com.yandex.mobile.ads.impl.iy0;
import com.yandex.mobile.ads.impl.ky0;
import com.yandex.mobile.ads.impl.o3;
import com.yandex.mobile.ads.impl.o8;
import com.yandex.mobile.ads.impl.p0;
import com.yandex.mobile.ads.impl.rx0;
import com.yandex.mobile.ads.impl.sp0;
import com.yandex.mobile.ads.impl.zx0;
import defpackage.y45;

public final class c implements ej {
    private final aj a;
    private final o8<String> b;
    private final a c;
    private final rx0<MediatedBannerAdapter, MediatedBannerAdapter.MediatedBannerAdapterListener> d;

    public c(aj ajVar, o8<String> o8Var, hz0 hz0Var) {
        y45.j(ajVar, "loadController");
        y45.j(o8Var, "adResponse");
        y45.j(hz0Var, "mediationData");
        this.a = ajVar;
        this.b = o8Var;
        o3 o3VarF = ajVar.f();
        ky0 ky0Var = new ky0(o3VarF);
        gy0 gy0Var = new gy0(o3VarF, o8Var);
        iy0 iy0Var = new iy0(new zx0(hz0Var.c(), ky0Var, gy0Var));
        g5 g5VarI = ajVar.i();
        rx0<MediatedBannerAdapter, MediatedBannerAdapter.MediatedBannerAdapterListener> rx0Var = new rx0<>(o3VarF, g5VarI, new b(), gy0Var, iy0Var, new ig1(ajVar, hz0Var, g5VarI));
        this.d = rx0Var;
        this.c = new a(ajVar, rx0Var, new d(ajVar.C(), ajVar.f().r()));
    }

    @Override
    public final void a(Context context, o8<String> o8Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        Activity activityA = p0.a();
        if (activityA != null) {
            sp0.a(new Object[0]);
        }
        if (activityA != null) {
            context = activityA;
        }
        this.d.a(context, this.c);
    }

    @Override
    public final String getAdInfo() {
        return this.b.e();
    }

    @Override
    public final void a(Context context) {
        y45.j(context, "context");
        this.a.j().d();
        this.d.a(context);
    }
}

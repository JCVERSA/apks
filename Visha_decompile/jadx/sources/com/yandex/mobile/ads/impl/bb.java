package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.C;
import defpackage.y45;

public final class bb {
    private final bv1 a;
    private final oi2 b;
    private final Context c;
    private final u5 d;
    private final hf2 e;
    private final x60 f;

    /* JADX WARN: Illegal instructions before constructor call */
    public bb(Context context, en2 en2Var, km2 km2Var) {
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, en2Var, km2Var, applicationContext, new u5(), new hf2(), new x60());
    }

    public final en0 a() {
        Context context = this.c;
        bv1 bv1Var = this.a;
        ls0 ls0Var = new ls0(context, bv1Var, this.b, new fm0(context, bv1Var));
        o9 o9Var = new o9(new q9(null), new o5(null), new z4());
        ui1 ui1Var = new ui1();
        oe2 oe2Var = new oe2(C.TIME_UNSET);
        a70 a70Var = new a70();
        si1 si1Var = new si1(ui1Var, oe2Var, a70Var, new yi1(a70Var), new ii1(a70Var));
        oe2 oe2VarA = si1Var.a();
        a70 a70VarC = si1Var.c();
        tj1 tj1Var = new tj1(null, null);
        y5 y5Var = new y5(new m9(new i80(tj1Var, oe2VarA)));
        kf2 kf2Var = new kf2();
        pl plVar = new pl(null);
        this.f.getClass();
        y45.j(plVar, "bindingControllerHolder");
        y45.j(o9Var, "adStateDataController");
        y45.j(si1Var, "playerStateController");
        y45.j(y5Var, "adPlayerEventsController");
        y45.j(kf2Var, "videoEventsController");
        y45.j(tj1Var, "positionProviderHolder");
        q9 q9VarB = o9Var.b();
        o5 o5VarC = o9Var.c();
        a70 a70VarC2 = si1Var.c();
        oe2 oe2VarA2 = si1Var.a();
        m3 m3Var = new m3(plVar, o9Var, si1Var, y5Var, o9Var.b(), o9Var.c(), si1Var.c(), si1Var.e(), si1Var.d(), new s5());
        le2 le2Var = new le2(o5VarC, oe2VarA2, tj1Var, kf2Var, new je2(tj1Var, oe2VarA2));
        qi1 qi1Var = new qi1(q9VarB, m3Var, le2Var, y5Var);
        fi1 fi1Var = new fi1(o5VarC, tj1Var, oe2VarA2, qi1Var, new is0(tj1Var, oe2VarA2));
        ki1 ki1Var = new ki1(q9VarB, y5Var, new db());
        i80 i80Var = new i80(tj1Var, oe2VarA2);
        l5 l5Var = new l5(o9Var, i80Var, le2Var, o9Var.b(), o9Var.c());
        o5 o5VarC2 = o9Var.c();
        z4 z4VarA = o9Var.a();
        ui1 ui1VarD = si1Var.d();
        th1 th1Var = new th1(plVar, si1Var, o9Var, le2Var, i80Var, m3Var, l5Var, o5VarC2, z4VarA, ui1VarD, si1Var.c(), new dg2(ui1VarD, le2Var));
        v60 v60Var = new v60(plVar, a70VarC2, fi1Var, qi1Var, ki1Var, new j52(o5VarC, si1Var, new fb(plVar, o5VarC, oe2VarA2, tj1Var), th1Var, si1Var.d(), si1Var.a(), new m82()), th1Var);
        q5 q5Var = new q5(oe2VarA, new b3(oe2VarA));
        this.d.getClass();
        y45.j(o9Var, "adStateDataController");
        y45.j(si1Var, "playerStateController");
        y45.j(y5Var, "adPlayerEventsController");
        q9 q9VarB2 = o9Var.b();
        o5 o5VarC3 = o9Var.c();
        oe2 oe2VarA3 = si1Var.a();
        a70 a70VarC3 = si1Var.c();
        rl1 rl1Var = new rl1(new s6(q9VarB2, si1Var, si1Var.d(), si1Var.c()));
        a70VarC3.a(rl1Var);
        c6 c6Var = new c6(o9Var, new d4(oe2VarA3, o5VarC3, new b3(oe2VarA3)), new bo0());
        q9 q9VarB3 = o9Var.b();
        z4 z4VarA2 = o9Var.a();
        ui1 ui1VarD2 = si1Var.d();
        ii1 ii1VarB = si1Var.b();
        x5 x5Var = new x5(o9Var, si1Var);
        int i = ao0.g;
        i60 i60Var = new i60(q9VarB2, si1Var, rl1Var, c6Var, new a6(o9Var, si1Var, y5Var, q9VarB3, z4VarA2, ui1VarD2, ii1VarB, x5Var, ao0.a.a()), y5Var, si1Var.d(), si1Var.e());
        this.e.getClass();
        y45.j(o9Var, "adStateDataController");
        y45.j(si1Var, "playerStateController");
        y45.j(tj1Var, "positionProviderHolder");
        y45.j(kf2Var, "videoPlayerEventsController");
        q9 q9VarB4 = o9Var.b();
        a70 a70VarC4 = si1Var.c();
        rl1 rl1Var2 = new rl1(new sf2(q9VarB4, si1Var, tj1Var, si1Var.a(), si1Var.d()));
        a70VarC4.a(rl1Var2);
        zw1 zw1Var = new zw1(rl1Var2, si1Var.e(), kf2Var);
        Context context2 = this.c;
        bv1 bv1Var2 = this.a;
        Context applicationContext = context2.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        return new en0(o9Var, q5Var, new nl(context2, bv1Var2, i60Var, zw1Var, applicationContext), plVar, ls0Var, si1Var, new o60(plVar, o9Var, y5Var, a70VarC, this.a.c(), o9Var.b(), o9Var.a(), o9Var.c(), new db(), new Handler(Looper.getMainLooper())), tj1Var, v60Var, new nb2(), o9Var.b(), o9Var.c(), si1Var.c(), si1Var.d());
    }

    public bb(Context context, en2 en2Var, km2 km2Var, Context context2, u5 u5Var, hf2 hf2Var, x60 x60Var) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(km2Var, "vmapRequestConfig");
        y45.j(context2, "applicationContext");
        y45.j(u5Var, "adPlayerCreator");
        y45.j(hf2Var, "videoPlayerCreator");
        y45.j(x60Var, "exoPlayerListenerCreator");
        this.a = en2Var;
        this.b = km2Var;
        this.c = context2;
        this.d = u5Var;
        this.e = hf2Var;
        this.f = x60Var;
    }
}

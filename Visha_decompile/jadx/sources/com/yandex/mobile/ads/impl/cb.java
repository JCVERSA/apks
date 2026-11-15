package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.C;
import defpackage.y45;

public final class cb {
    private final bv1 a;
    private final oi2 b;
    private final Context c;
    private final v5 d;
    private final if2 e;
    private final y60 f;

    /* JADX WARN: Illegal instructions before constructor call */
    public cb(Context context, en2 en2Var, km2 km2Var) {
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, en2Var, km2Var, applicationContext, new v5(), new if2(), new y60());
    }

    public final dn0 a() {
        Context context = this.c;
        bv1 bv1Var = this.a;
        ks0 ks0Var = new ks0(context, bv1Var, this.b, new fm0(context, bv1Var));
        p9 p9Var = new p9(new r9(null), new p5(null), new a5());
        vi1 vi1Var = new vi1();
        pe2 pe2Var = new pe2(C.TIME_UNSET);
        b70 b70Var = new b70();
        ti1 ti1Var = new ti1(vi1Var, pe2Var, b70Var, new zi1(b70Var), new ji1(b70Var));
        pe2 pe2VarA = ti1Var.a();
        b70 b70VarC = ti1Var.c();
        uj1 uj1Var = new uj1(null, null);
        z5 z5Var = new z5(new n9(new j80(uj1Var, pe2VarA)));
        jf2 jf2Var = new jf2();
        ql qlVar = new ql(null);
        this.f.getClass();
        y45.j(qlVar, "bindingControllerHolder");
        y45.j(p9Var, "adStateDataController");
        y45.j(ti1Var, "playerStateController");
        y45.j(z5Var, "adPlayerEventsController");
        y45.j(jf2Var, "videoEventsController");
        y45.j(uj1Var, "positionProviderHolder");
        r9 r9VarB = p9Var.b();
        p5 p5VarC = p9Var.c();
        b70 b70VarC2 = ti1Var.c();
        pe2 pe2VarA2 = ti1Var.a();
        n3 n3Var = new n3(qlVar, p9Var, ti1Var, z5Var, p9Var.b(), p9Var.c(), ti1Var.c(), ti1Var.e(), ti1Var.d(), new t5());
        me2 me2Var = new me2(p5VarC, pe2VarA2, uj1Var, jf2Var, new ke2(uj1Var, pe2VarA2));
        ri1 ri1Var = new ri1(r9VarB, n3Var, me2Var, z5Var);
        gi1 gi1Var = new gi1(p5VarC, uj1Var, pe2VarA2, ri1Var, new js0(uj1Var, pe2VarA2));
        li1 li1Var = new li1(r9VarB, z5Var, new eb());
        j80 j80Var = new j80(uj1Var, pe2VarA2);
        m5 m5Var = new m5(p9Var, j80Var, me2Var, p9Var.b(), p9Var.c());
        p5 p5VarC2 = p9Var.c();
        a5 a5VarA = p9Var.a();
        vi1 vi1VarD = ti1Var.d();
        uh1 uh1Var = new uh1(qlVar, ti1Var, p9Var, me2Var, j80Var, n3Var, m5Var, p5VarC2, a5VarA, vi1VarD, ti1Var.c(), new eg2(vi1VarD, me2Var));
        w60 w60Var = new w60(qlVar, b70VarC2, gi1Var, ri1Var, li1Var, new k52(p5VarC, ti1Var, new gb(qlVar, p5VarC, pe2VarA2, uj1Var), uh1Var, ti1Var.d(), ti1Var.a(), new n82()), uh1Var);
        r5 r5Var = new r5(pe2VarA, new c3(pe2VarA));
        this.d.getClass();
        y45.j(p9Var, "adStateDataController");
        y45.j(ti1Var, "playerStateController");
        y45.j(z5Var, "adPlayerEventsController");
        r9 r9VarB2 = p9Var.b();
        p5 p5VarC3 = p9Var.c();
        pe2 pe2VarA3 = ti1Var.a();
        b70 b70VarC3 = ti1Var.c();
        sl1 sl1Var = new sl1(new t6(r9VarB2, ti1Var, ti1Var.d(), ti1Var.c()));
        b70VarC3.a(sl1Var);
        d6 d6Var = new d6(p9Var, new e4(pe2VarA3, p5VarC3, new c3(pe2VarA3)), new bo0());
        r9 r9VarB3 = p9Var.b();
        a5 a5VarA2 = p9Var.a();
        vi1 vi1VarD2 = ti1Var.d();
        ji1 ji1VarB = ti1Var.b();
        w5 w5Var = new w5(p9Var, ti1Var);
        int i = ao0.g;
        j60 j60Var = new j60(r9VarB2, ti1Var, sl1Var, d6Var, new b6(p9Var, ti1Var, z5Var, r9VarB3, a5VarA2, vi1VarD2, ji1VarB, w5Var, ao0.a.a()), z5Var, ti1Var.d(), ti1Var.e());
        this.e.getClass();
        y45.j(p9Var, "adStateDataController");
        y45.j(ti1Var, "playerStateController");
        y45.j(uj1Var, "positionProviderHolder");
        y45.j(jf2Var, "videoPlayerEventsController");
        r9 r9VarB4 = p9Var.b();
        b70 b70VarC4 = ti1Var.c();
        sl1 sl1Var2 = new sl1(new tf2(r9VarB4, ti1Var, uj1Var, ti1Var.a(), ti1Var.d()));
        b70VarC4.a(sl1Var2);
        ax1 ax1Var = new ax1(sl1Var2, ti1Var.e(), jf2Var);
        Context context2 = this.c;
        bv1 bv1Var2 = this.a;
        Context applicationContext = context2.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        return new dn0(p9Var, r5Var, new ol(context2, bv1Var2, j60Var, ax1Var, applicationContext), qlVar, ks0Var, ti1Var, new p60(qlVar, p9Var, z5Var, b70VarC, this.a.c(), p9Var.b(), p9Var.a(), p9Var.c(), new eb(), new Handler(Looper.getMainLooper())), uj1Var, w60Var, new nb2(), p9Var.b(), p9Var.c(), ti1Var.c(), ti1Var.d());
    }

    public cb(Context context, en2 en2Var, km2 km2Var, Context context2, v5 v5Var, if2 if2Var, y60 y60Var) {
        y45.j(context, "context");
        y45.j(en2Var, "sdkEnvironmentModule");
        y45.j(km2Var, "vmapRequestConfig");
        y45.j(context2, "applicationContext");
        y45.j(v5Var, "adPlayerCreator");
        y45.j(if2Var, "videoPlayerCreator");
        y45.j(y60Var, "exoPlayerListenerCreator");
        this.a = en2Var;
        this.b = km2Var;
        this.c = context2;
        this.d = v5Var;
        this.e = if2Var;
        this.f = y60Var;
    }
}

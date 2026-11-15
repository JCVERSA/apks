package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class qb1 {
    private final t81 a;
    private final ob1 b;
    private final de2 c;
    private final va1 d;
    private nb1 e;
    private s81 f;

    public qb1(Context context, rg2 rg2Var, xe2 xe2Var, o3 o3Var, o8 o8Var, ue2 ue2Var, db1 db1Var, t81 t81Var, sj0 sj0Var, ob1 ob1Var, de2 de2Var, va1 va1Var) {
        y45.j(context, "context");
        y45.j(rg2Var, "viewAdapter");
        y45.j(xe2Var, "videoOptions");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(ue2Var, "impressionTrackingListener");
        y45.j(db1Var, "nativeVideoPlaybackEventListener");
        y45.j(t81Var, "nativeForcePauseObserver");
        y45.j(sj0Var, "imageProvider");
        y45.j(ob1Var, "presenterCreator");
        y45.j(de2Var, "aspectRatioProvider");
        y45.j(va1Var, "nativeVideoAdPlayerProvider");
        this.a = t81Var;
        this.b = ob1Var;
        this.c = de2Var;
        this.d = va1Var;
    }

    public final void a(yb1 yb1Var, zb2<kb1> zb2Var) {
        y45.j(yb1Var, "videoView");
        y45.j(zb2Var, "videoAdInfo");
        this.c.getClass();
        y45.j(zb2Var, "videoAdInfo");
        kb1 kb1VarD = zb2Var.d();
        yb1Var.setAspectRatio(kb1VarD.getAdHeight() != 0 ? kb1VarD.getAdWidth() / kb1VarD.getAdHeight() : 1.7777778f);
        nb1 nb1Var = this.e;
        if (nb1Var != null) {
            nb1Var.a();
        }
    }

    public qb1(Context context, rg2 rg2Var, xe2 xe2Var, o3 o3Var, o8 o8Var, ue2 ue2Var, db1 db1Var, t81 t81Var, sj0 sj0Var, yx1 yx1Var) {
        ob1 ob1Var = new ob1(rg2Var, xe2Var, o3Var, o8Var, ue2Var, db1Var, sj0Var, yx1Var);
        de2 de2Var = new de2();
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, rg2Var, xe2Var, o3Var, o8Var, ue2Var, db1Var, t81Var, sj0Var, ob1Var, de2Var, new va1(applicationContext, o3Var, o8Var));
    }

    public final void a(yb1 yb1Var) {
        y45.j(yb1Var, "videoView");
        nb1 nb1Var = this.e;
        if (nb1Var != null) {
            nb1Var.b(yb1Var);
        }
        s81 s81Var = this.f;
        if (s81Var != null) {
            this.a.b(s81Var);
            this.f = null;
        }
        yb1Var.setOnAttachStateChangeListener(null);
    }

    public final void a(yb1 yb1Var, lb2 lb2Var, ng2 ng2Var) {
        y45.j(yb1Var, "videoView");
        y45.j(lb2Var, "video");
        y45.j(ng2Var, "videoTracker");
        sa1 sa1VarA = this.d.a(lb2Var.b());
        Context context = yb1Var.getContext();
        ob1 ob1Var = this.b;
        y45.g(context);
        nb1 nb1VarA = ob1Var.a(context, sa1VarA, lb2Var, ng2Var);
        this.e = nb1VarA;
        nb1VarA.a(yb1Var);
        s81 s81Var = new s81(sa1VarA);
        this.f = s81Var;
        this.a.a(s81Var);
        yb1Var.setOnAttachStateChangeListener(new ab1(sa1VarA, yb1Var));
    }
}

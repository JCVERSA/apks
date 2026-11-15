package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class nb1 {
    private final xe2 a;
    private final rg2 b;
    private final jb1 c;
    private final yx1 d;
    private final ta1 e;
    private final nl1 f;
    private final zb1 g;
    private final xh1 h;
    private final xh1 i;
    private final gp1 j;
    private final a k;
    private final it0 l;
    private xh1 m;

    public final class a implements tc2 {
        public a() {
        }

        public static final void a(nb1 nb1Var) {
            y45.j(nb1Var, "this$0");
            nb1.a(nb1Var, nb1Var.h);
        }

        @Override
        public final void c() {
            yb1 yb1VarB = nb1.this.b.b();
            if (yb1VarB != null) {
                yb1VarB.setClickable(true);
            }
        }

        @Override
        public final void b() {
            nb1.this.m = null;
            yx1 yx1Var = nb1.this.d;
            if (yx1Var == null || !yx1Var.c()) {
                nb1.this.j.a();
            } else {
                it0 it0Var = nb1.this.l;
                final nb1 nb1Var = nb1.this;
                it0Var.a(new Runnable() {
                    @Override
                    public final void run() {
                        nb1.a.a(nb1Var);
                    }
                });
            }
            nb1.this.c.b();
        }

        @Override
        public final void a() {
            nb1.this.c.a();
        }
    }

    public final class b implements mp1 {
        public b() {
        }

        @Override
        public final void a(yb1 yb1Var) {
            y45.j(yb1Var, "nativeVideoView");
            nb1 nb1Var = nb1.this;
            nb1.a(nb1Var, nb1Var.h);
        }
    }

    public nb1(Context context, o8 o8Var, o3 o3Var, sa1 sa1Var, lb2 lb2Var, xe2 xe2Var, rg2 rg2Var, uc2 uc2Var, ng2 ng2Var, ue2 ue2Var, jb1 jb1Var, sj0 sj0Var, yx1 yx1Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(sa1Var, "videoAdPlayer");
        y45.j(lb2Var, "video");
        y45.j(xe2Var, "videoOptions");
        y45.j(rg2Var, "videoViewAdapter");
        y45.j(uc2Var, "playbackParametersProvider");
        y45.j(ng2Var, "videoTracker");
        y45.j(ue2Var, "impressionTrackingListener");
        y45.j(jb1Var, "nativeVideoPlaybackEventListener");
        y45.j(sj0Var, "imageProvider");
        this.a = xe2Var;
        this.b = rg2Var;
        this.c = jb1Var;
        this.d = yx1Var;
        this.j = new gp1(rg2Var, new b());
        this.k = new a();
        this.l = new it0();
        cc1 cc1Var = new cc1(rg2Var);
        this.e = new ta1(sa1Var);
        this.g = new zb1(sa1Var);
        dd2 dd2Var = new dd2();
        new xa1(rg2Var, sa1Var, cc1Var, jb1Var).a(dd2Var);
        ib1 ib1Var = new ib1(context, o8Var, o3Var, sa1Var, lb2Var.b(), cc1Var, uc2Var, ng2Var, dd2Var, ue2Var);
        np1 np1Var = new np1(sa1Var, lb2Var.b(), dd2Var);
        ac1 ac1Var = new ac1(sa1Var, xe2Var);
        nl1 nl1Var = new nl1(lb2Var, new jj0(context, new d91(o8Var), sj0Var));
        this.f = nl1Var;
        this.i = new xh1(rg2Var, ib1Var, ac1Var, nl1Var);
        this.h = new xh1(rg2Var, np1Var, ac1Var, nl1Var);
    }

    public static final void a(nb1 nb1Var, xh1 xh1Var) {
        nb1Var.m = xh1Var;
        if (xh1Var != null) {
            xh1Var.a(nb1Var.k);
        }
        xh1 xh1Var2 = nb1Var.m;
        if (xh1Var2 != null) {
            xh1Var2.a();
        }
    }

    public final void b(yb1 yb1Var) {
        y45.j(yb1Var, "nativeVideoView");
        xh1 xh1Var = this.m;
        if (xh1Var != null) {
            xh1Var.a(yb1Var);
        }
        this.g.b(yb1Var);
    }

    public final void a() {
        yb1 yb1VarB = this.b.b();
        if (yb1VarB != null) {
            yb1VarB.setClickable(false);
        }
    }

    public final void a(yb1 yb1Var) {
        y45.j(yb1Var, "nativeVideoView");
        this.e.a(this.a);
        this.g.a(yb1Var);
        this.f.a(yb1Var.b());
        xh1 xh1Var = this.i;
        this.m = xh1Var;
        if (xh1Var != null) {
            xh1Var.a(this.k);
        }
        xh1 xh1Var2 = this.m;
        if (xh1Var2 != null) {
            xh1Var2.a();
        }
    }
}

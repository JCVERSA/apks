package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import defpackage.y45;

public final class gv1 {
    private final o3 a;
    private final o8<String> b;
    private final String c;
    private final t8 d;
    private final hd0 e;
    private final ld0 f;
    private final xc0 g;
    private final zg0 h;
    private final sd0 i;
    private final Context j;
    private final pd0 k;
    private final gd0 l;
    private final gs m;
    private final ad0 n;
    private final View o;
    private final ew p;

    public gv1(Context context, bv1 bv1Var, o3 o3Var, o8<String> o8Var, String str, t8 t8Var, hd0 hd0Var, ld0 ld0Var, xc0 xc0Var, zg0 zg0Var, sd0 sd0Var) throws tj2 {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(str, "htmlResponse");
        y45.j(t8Var, "adResultReceiver");
        y45.j(hd0Var, "fullScreenHtmlWebViewListener");
        y45.j(ld0Var, "fullScreenMobileAdsSchemeListener");
        y45.j(xc0Var, "fullScreenCloseButtonListener");
        y45.j(zg0Var, "htmlWebViewAdapterFactoryProvider");
        y45.j(sd0Var, "fullscreenAdActivityLauncher");
        this.a = o3Var;
        this.b = o8Var;
        this.c = str;
        this.d = t8Var;
        this.e = hd0Var;
        this.f = ld0Var;
        this.g = xc0Var;
        this.h = zg0Var;
        this.i = sd0Var;
        this.j = context.getApplicationContext();
        pd0 pd0VarB = b();
        this.k = pd0VarB;
        this.p = new fw(context, o3Var, new er1().b(o8Var, o3Var)).a();
        this.l = c();
        gs gsVarA = a();
        this.m = gsVarA;
        ad0 ad0Var = new ad0(gsVarA);
        this.n = ad0Var;
        xc0Var.a(ad0Var);
        hd0Var.a(ad0Var);
        this.o = gsVarA.a(pd0VarB, o8Var);
    }

    private final gs a() {
        boolean zA = l21.a(this.c);
        Context context = this.j;
        y45.i(context, "context");
        y45.j(context, "context");
        n8 n8Var = new n8(context, null, 6, 0);
        FrameLayout frameLayout = new FrameLayout(context);
        y45.j(context, "context");
        int iA = wh2.a(context, 25.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iA, iA);
        layoutParams.gravity = 17;
        int iA2 = wh2.a(context, 19.5f);
        layoutParams.setMargins(iA2, iA2, iA2, iA2);
        frameLayout.addView(n8Var, layoutParams);
        n8Var.setTag(uh2.a("close_button"));
        n8Var.setBorderWidth(1.0f);
        frameLayout.setOnClickListener(new qp(this.g, this.l, this.p));
        return new hs(new sp()).a(frameLayout, this.b, this.p, zA, this.b.S());
    }

    private final pd0 b() throws tj2 {
        qd0 qd0Var = new qd0();
        Context context = this.j;
        y45.i(context, "context");
        return qd0Var.a(context, this.b, this.a);
    }

    private final gd0 c() {
        boolean zA = l21.a(this.c);
        this.h.getClass();
        yg0 q21Var = zA ? new q21() : new mk();
        pd0 pd0Var = this.k;
        hd0 hd0Var = this.e;
        ld0 ld0Var = this.f;
        return q21Var.a(pd0Var, hd0Var, ld0Var, this.g, ld0Var);
    }

    public final void d() {
        this.g.a((zr) null);
        this.e.a((fs) null);
        this.l.invalidate();
        this.m.d();
    }

    public final String e() {
        return this.b.e();
    }

    public final zc0 f() {
        return this.n.a();
    }

    public final void g() {
        this.m.b();
        this.k.e();
    }

    public final void h() {
        this.l.a(this.c);
    }

    public final void i() {
        this.k.f();
        this.m.a();
    }

    public final void a(zr zrVar) {
        this.g.a(zrVar);
    }

    public final void a(fs fsVar) {
        this.e.a(fsVar);
    }

    public final void a(RelativeLayout relativeLayout) {
        y45.j(relativeLayout, "rootLayout");
        this.m.a(relativeLayout);
        relativeLayout.addView(this.o);
        this.m.c();
    }

    public final Object a(Context context, t8 t8Var) {
        y45.j(context, "context");
        this.d.a(t8Var);
        return this.i.a(context, new c1(new c1.a(this.b, this.a, this.d).a(this)));
    }
}

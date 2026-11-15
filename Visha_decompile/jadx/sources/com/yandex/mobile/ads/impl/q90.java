package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.impl.q90;
import defpackage.y45;

public final class q90 {
    private final vk1 a;
    private final o3 b;
    private final m20 c;
    private final ir0<ExtendedNativeAdView> d;

    public q90(vk1 vk1Var, o3 o3Var, m20 m20Var, ir0<ExtendedNativeAdView> ir0Var) {
        y45.j(vk1Var, "divKitDesign");
        y45.j(o3Var, "adConfiguration");
        y45.j(m20Var, "divKitAdBinderFactory");
        y45.j(ir0Var, "layoutDesignFactory");
        this.a = vk1Var;
        this.b = o3Var;
        this.c = m20Var;
        this.d = ir0Var;
    }

    public static final void a() {
    }

    public final fr0 a(Context context, o8 o8Var, b02 b02Var, st stVar, qe2 qe2Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(b02Var, "nativeAdPrivate");
        y45.j(stVar, "nativeAdEventListener");
        y45.j(qe2Var, "videoEventController");
        uo uoVarA = this.a.a();
        v20 v20VarB = this.a.b();
        zr zrVar = new zr() {
            @Override
            public final void f() {
                q90.a();
            }
        };
        gj gjVar = new gj();
        s01 s01VarC = this.b.q().c();
        this.c.getClass();
        ar arVar = new ar(new ga0(this.a, new k20(context, this.b, o8Var, zrVar, gjVar, v20VarB), s01VarC), m20.a(b02Var, zrVar, stVar, uoVarA, s01VarC), new c81(b02Var.b(), qe2Var));
        e30 e30Var = new e30(o8Var);
        ir0<ExtendedNativeAdView> ir0Var = this.d;
        int i = R.layout.monetization_ads_internal_divkit;
        ir0Var.getClass();
        y45.j(ExtendedNativeAdView.class, "layoutViewClass");
        y45.j(arVar, "designComponentBinder");
        y45.j(e30Var, "designConstraint");
        return new fr0(i, arVar, e30Var);
    }
}

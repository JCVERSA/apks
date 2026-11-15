package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import com.yandex.div2.DivData;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.impl.hj;
import defpackage.y45;

public final class hj {
    private final DivData a;
    private final o3 b;
    private final m20 c;
    private final w10 d;
    private final ir0<ExtendedNativeAdView> e;

    public hj(DivData divData, o3 o3Var, m20 m20Var, w10 w10Var, ir0<ExtendedNativeAdView> ir0Var) {
        y45.j(divData, "divData");
        y45.j(o3Var, "adConfiguration");
        y45.j(m20Var, "divKitAdBinderFactory");
        y45.j(w10Var, "divConfigurationCreator");
        y45.j(ir0Var, "layoutDesignFactory");
        this.a = divData;
        this.b = o3Var;
        this.c = m20Var;
        this.d = w10Var;
        this.e = ir0Var;
    }

    public static final void a() {
    }

    public final fr0 a(Context context, o8 o8Var, q61 q61Var, b81 b81Var, qe2 qe2Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(b81Var, "nativeAdEventListener");
        y45.j(qe2Var, "videoEventController");
        uo uoVar = new uo();
        zr zrVar = new zr() {
            @Override
            public final void f() {
                hj.a();
            }
        };
        gj gjVar = new gj();
        s01 s01VarC = this.b.q().c();
        this.c.getClass();
        b10 b10VarA = m20.a(q61Var, zrVar, b81Var, uoVar, s01VarC);
        v20 v20Var = new v20(uoVar);
        ar arVar = new ar(new u20(this.a, new k20(context, this.b, o8Var, zrVar, gjVar, v20Var), this.d.a(context, this.a, q61Var, v20Var), s01VarC, new sb0()), b10VarA, new c81(q61Var.b(), qe2Var));
        e30 e30Var = new e30(o8Var);
        ir0<ExtendedNativeAdView> ir0Var = this.e;
        int i = R.layout.monetization_ads_internal_divkit;
        ir0Var.getClass();
        y45.j(ExtendedNativeAdView.class, "layoutViewClass");
        y45.j(arVar, "designComponentBinder");
        y45.j(e30Var, "designConstraint");
        return new fr0(i, arVar, e30Var);
    }
}

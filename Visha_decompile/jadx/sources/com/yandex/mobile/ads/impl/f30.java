package com.yandex.mobile.ads.impl;

import android.content.Context;
import androidx.p004lifecycle.LifecycleOwner;
import com.monetization.ads.nativeads.ExtendedNativeAdView;
import com.yandex.div2.DivData;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class f30 implements ee0 {
    private final DivData a;
    private final o3 b;
    private final b10<ExtendedNativeAdView> c;
    private final j1 d;
    private final l20 e;
    private final int f;
    private final w10 g;

    public f30(DivData divData, o3 o3Var, ar arVar, j1 j1Var, l20 l20Var, int i) {
        this(divData, o3Var, arVar, j1Var, l20Var, i, new w10(o3Var.q().c()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final fr0<ExtendedNativeAdView> a(Context context, o8<?> o8Var, q61 q61Var, zr zrVar, st stVar, e1 e1Var) {
        b10 m51Var;
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(zrVar, "contentCloseListener");
        y45.j(stVar, "nativeAdEventListener");
        y45.j(e1Var, "eventController");
        uo uoVar = new uo();
        v20 v20Var = new v20(uoVar);
        defpackage.jh2 jh2VarA = this.g.a(context, this.a, q61Var, v20Var);
        k20 k20Var = new k20(context, this.b, o8Var, zrVar, this.e, v20Var);
        s01 s01VarC = this.b.q().c();
        u20 u20Var = new u20(this.a, k20Var, jh2VarA, s01VarC, context instanceof LifecycleOwner ? (LifecycleOwner) context : null);
        pq1 pq1Var = new pq1(this.d, this.f);
        y45.j(q61Var, "nativeAdPrivate");
        y45.j(zrVar, "contentCloseListener");
        y45.j(stVar, "nativeAdEventListener");
        y45.j(uoVar, "clickConnector");
        y45.j(s01VarC, "reporter");
        if (q61Var instanceof b02) {
            b02 b02Var = (b02) q61Var;
            m51Var = new a02(b02Var, zrVar, stVar, uoVar, s01VarC, new l41(), new r61(), new eh(r61.b(b02Var)));
        } else {
            m51Var = new m51(q61Var, zrVar, stVar, uoVar, s01VarC, new l41(), new r61(), new eh(r61.a(q61Var)));
        }
        return new fr0<>(R.layout.monetization_ads_internal_divkit, new ar(pq1Var, u20Var, new ae0(q61Var, zrVar, stVar, uoVar, s01VarC, m51Var), this.c), new e30(o8Var));
    }

    public f30(DivData divData, o3 o3Var, ar arVar, j1 j1Var, l20 l20Var, int i, w10 w10Var) {
        y45.j(divData, "divData");
        y45.j(o3Var, "adConfiguration");
        y45.j(arVar, "adTypeSpecificBinder");
        y45.j(j1Var, "adActivityListener");
        y45.j(l20Var, "divKitActionHandlerDelegate");
        y45.j(w10Var, "divConfigurationCreator");
        this.a = divData;
        this.b = o3Var;
        this.c = arVar;
        this.d = j1Var;
        this.e = l20Var;
        this.f = i;
        this.g = w10Var;
    }
}

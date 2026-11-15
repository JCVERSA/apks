package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdapter;
import com.monetization.ads.mediation.nativeads.MediatedNativeAdapterListener;
import defpackage.y45;

public final class vy0 implements l81 {
    private final rx0<MediatedNativeAdapter, MediatedNativeAdapterListener> a;
    private final s71 b;

    public vy0(g61 g61Var, o8<y61> o8Var, hz0 hz0Var, o3 o3Var, ly0 ly0Var, gy0 gy0Var, zx0<MediatedNativeAdapter> zx0Var, sy0 sy0Var, g5 g5Var, ig1 ig1Var, ty0 ty0Var, rx0<MediatedNativeAdapter, MediatedNativeAdapterListener> rx0Var, s71 s71Var) {
        y45.j(g61Var, "nativeAdLoadManager");
        y45.j(o8Var, "adResponse");
        y45.j(hz0Var, "mediationData");
        y45.j(o3Var, "adConfiguration");
        y45.j(ly0Var, "extrasCreator");
        y45.j(gy0Var, "mediatedAdapterReporter");
        y45.j(zx0Var, "mediatedAdProvider");
        y45.j(sy0Var, "mediatedAdCreator");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(ig1Var, "passbackAdLoader");
        y45.j(ty0Var, "mediatedNativeAdLoader");
        y45.j(rx0Var, "mediatedAdController");
        y45.j(s71Var, "mediatedNativeAdapterListener");
        this.a = rx0Var;
        this.b = s71Var;
    }

    @Override
    public final void a(Context context, o8<y61> o8Var) {
        y45.j(context, "context");
        y45.j(o8Var, "adResponse");
        this.a.a(context, this.b);
    }
}

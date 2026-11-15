package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.ViewGroup;
import defpackage.y45;
import java.lang.ref.WeakReference;
import java.util.List;

public final class nl {
    private final bv1 a;
    private final kt b;
    private final mu c;
    private final Context d;

    public nl(Context context, bv1 bv1Var, i60 i60Var, zw1 zw1Var, Context context2) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(i60Var, "adPlayer");
        y45.j(zw1Var, "videoPlayer");
        y45.j(context2, "applicationContext");
        this.a = bv1Var;
        this.b = i60Var;
        this.c = zw1Var;
        this.d = context2;
    }

    public final ll a(ViewGroup viewGroup, List<xb2> list, et etVar) {
        y45.j(viewGroup, "adViewGroup");
        y45.j(list, "friendlyOverlays");
        y45.j(etVar, "instreamAd");
        ft ftVar = new ft(this.d, this.a, etVar, this.b, this.c);
        return new ll(viewGroup, list, ftVar, new WeakReference(viewGroup), new tl0(ftVar), null);
    }
}

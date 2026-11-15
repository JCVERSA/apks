package com.yandex.mobile.ads.impl;

import android.os.Handler;
import android.os.Looper;
import android.widget.FrameLayout;
import defpackage.y45;

public final class hs {
    private final sp a;

    public hs(sp spVar) {
        y45.j(spVar, "closeButtonControllerProvider");
        this.a = spVar;
    }

    public final gs a(FrameLayout frameLayout, o8 o8Var, dw dwVar, boolean z, boolean z2) {
        rp lzVar;
        y45.j(frameLayout, "closeButton");
        y45.j(o8Var, "adResponse");
        y45.j(dwVar, "debugEventsReporter");
        this.a.getClass();
        y45.j(frameLayout, "closeButton");
        y45.j(o8Var, "adResponse");
        y45.j(dwVar, "debugEventsReporter");
        Long lU = o8Var.u();
        if (z && lU == null) {
            lzVar = new j21(frameLayout, new z82(), new Handler(Looper.getMainLooper()));
        } else {
            lzVar = new lz(frameLayout, new di2(), dwVar, lU != null ? lU.longValue() : 0L, new aq());
        }
        return z2 ? new bd0(lzVar) : new qb0(lzVar);
    }
}

package com.yandex.mobile.ads.impl;

import android.view.View;
import defpackage.hz9;
import defpackage.y45;

public final class u32 implements tq0 {
    private final View b;

    public u32(yf1 yf1Var) {
        y45.j(yf1Var, "htmlWebView");
        this.b = yf1Var;
    }

    @Override
    public final String a() {
        boolean zIsHardwareAccelerated = this.b.isHardwareAccelerated();
        hz9 hz9Var = hz9.a;
        return z0.a(new Object[]{Boolean.valueOf(zIsHardwareAccelerated)}, 1, "supports: {inlineVideo: %s}", "format(...)");
    }
}

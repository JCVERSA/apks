package com.yandex.mobile.ads.impl;

import com.monetization.ads.nativeads.CustomizableMediaView;

final class ew1 implements Runnable {
    final hx0 b;
    final CustomizableMediaView c;
    final ex0 d;

    public ew1(hx0 hx0Var, CustomizableMediaView customizableMediaView, ex0 ex0Var) {
        this.b = hx0Var;
        this.c = customizableMediaView;
        this.d = ex0Var;
    }

    @Override
    public final void run() {
        this.b.b(this.c, this.d);
    }
}

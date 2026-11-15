package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class vc2 {
    private final mg2 a;
    private boolean b;

    public vc2(wc2<?> wc2Var, mg2 mg2Var) {
        y45.j(wc2Var, "videoAdPlayer");
        y45.j(mg2Var, "videoTracker");
        this.a = mg2Var;
        this.b = wc2Var.getVolume() == 0.0f;
    }

    public final void a(float f) {
        if (f == 0.0f) {
            if (this.b) {
                return;
            }
            this.b = true;
            this.a.l();
            return;
        }
        if (this.b) {
            this.b = false;
            this.a.a();
        }
    }
}

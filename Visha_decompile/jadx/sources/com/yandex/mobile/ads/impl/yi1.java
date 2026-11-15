package com.yandex.mobile.ads.impl;

import androidx.media3.common.Player;
import defpackage.y45;

public final class yi1 {
    private final a70 a;
    private Float b;

    public yi1(a70 a70Var) {
        y45.j(a70Var, "playerProvider");
        this.a = a70Var;
    }

    public final void a(float f) {
        if (this.b == null) {
            this.b = a();
        }
        Player playerA = this.a.a();
        if (playerA == null) {
            return;
        }
        playerA.setVolume(f);
    }

    public final void b() {
        Float f = this.b;
        if (f != null) {
            float fFloatValue = f.floatValue();
            Player playerA = this.a.a();
            if (playerA != null) {
                playerA.setVolume(fFloatValue);
            }
        }
        this.b = null;
    }

    public final Float a() {
        Player playerA = this.a.a();
        if (playerA != null) {
            return Float.valueOf(playerA.getVolume());
        }
        return null;
    }
}

package com.yandex.mobile.ads.impl;

import androidx.media3.common.Player;
import defpackage.y45;

public final class ii1 {
    private final a70 a;

    public ii1(a70 a70Var) {
        y45.j(a70Var, "playerProvider");
        this.a = a70Var;
    }

    public final void a() {
        Player playerA = this.a.a();
        if (playerA == null) {
            return;
        }
        playerA.setPlayWhenReady(false);
    }

    public final void b() {
        Player playerA = this.a.a();
        if (playerA == null) {
            return;
        }
        playerA.setPlayWhenReady(true);
    }
}

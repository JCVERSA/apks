package com.yandex.mobile.ads.impl;

import androidx.media3.common.Player;
import defpackage.y45;

public final class rl1 implements am1, wi1 {
    private final am1 a;
    private di1 b;
    private nb0 c;

    public rl1(am1 am1Var) {
        y45.j(am1Var, "progressProvider");
        this.a = am1Var;
        this.b = di1.a.a();
    }

    @Override
    public final di1 a() {
        am1 am1Var = this.c;
        if (am1Var == null) {
            am1Var = this.a;
        }
        di1 di1VarA = am1Var.a();
        this.b = di1VarA;
        return di1VarA;
    }

    @Override
    public final void a(Player player) {
        this.c = player == null ? new nb0(this.b) : null;
    }
}

package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class ip1 {
    private final kp1 a;

    public ip1(rg2 rg2Var, mp1 mp1Var) {
        y45.j(rg2Var, "videoViewAdapter");
        y45.j(mp1Var, "replayController");
        this.a = new kp1(rg2Var, mp1Var, this);
    }

    public static void b(hp1 hp1Var) {
        y45.j(hp1Var, "replayActionView");
        hp1Var.setBackground(null);
        hp1Var.setVisibility(8);
        hp1Var.a().setOnClickListener(null);
    }

    public final void a(hp1 hp1Var) {
        y45.j(hp1Var, "replayActionView");
        hp1Var.setVisibility(4);
        hp1Var.a().setOnClickListener(this.a);
    }
}

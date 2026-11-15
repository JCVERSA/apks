package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class xn1 {
    private final ot1 a;
    private final z2 b;

    public xn1(ot1 ot1Var, z2 z2Var) {
        y45.j(ot1Var, "schedulePlaylistItemsProvider");
        y45.j(z2Var, "adBreakStatusController");
        this.a = ot1Var;
        this.b = z2Var;
    }

    public final gt a(long j) {
        for (ej1 ej1Var : this.a.a()) {
            gt gtVarA = ej1Var.a();
            boolean z = Math.abs(ej1Var.b() - j) < 200;
            y2 y2VarA = this.b.a(gtVarA);
            if (z && y2.d == y2VarA) {
                return gtVarA;
            }
        }
        return null;
    }
}

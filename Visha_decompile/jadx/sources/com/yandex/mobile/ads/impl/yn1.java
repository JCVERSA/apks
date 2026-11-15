package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.ArrayList;

public final class yn1 {
    private final ot1 a;
    private final z2 b;

    public yn1(ot1 ot1Var, z2 z2Var) {
        y45.j(ot1Var, "schedulePlaylistItemsProvider");
        y45.j(z2Var, "adBreakStatusController");
        this.a = ot1Var;
        this.b = z2Var;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0040  */
    public final gt a(long j) {
        boolean z;
        ArrayList arrayListA = this.a.a();
        int size = arrayListA.size();
        for (int i = 0; i < size; i++) {
            gt gtVarA = ((ej1) arrayListA.get(i)).a();
            if (i <= 0 ? j < 0 : j <= ((ej1) arrayListA.get(i - 1)).b()) {
                z = true;
            } else if (j > ((ej1) arrayListA.get(i)).b()) {
                z = true;
            } else {
                z = false;
            }
            y2 y2VarA = this.b.a(gtVarA);
            if (!z && y2.b == y2VarA) {
                return gtVarA;
            }
        }
        return null;
    }
}

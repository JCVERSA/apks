package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.instream.InstreamAdBreakType;
import defpackage.y45;

public final class wo0 {
    private final qd2 a;
    private final gt b;
    private final zb2<go0> c;
    private final ao0 d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public wo0(qd2 qd2Var, gt gtVar, zb2 zb2Var) {
        this(qd2Var, gtVar, zb2Var, ao0.a.a());
        int i = ao0.g;
    }

    public final boolean a() {
        pd2 pd2Var;
        zc2 zc2VarB = this.c.d().b();
        if (!this.d.d() || zc2VarB.a() <= 1) {
            String strE = this.b.e();
            int iHashCode = strE.hashCode();
            if (iHashCode == -1183812830 ? strE.equals(InstreamAdBreakType.INROLL) : iHashCode == 830323571 ? strE.equals(InstreamAdBreakType.PAUSEROLL) : iHashCode == 1055572677 && strE.equals(InstreamAdBreakType.MIDROLL)) {
                pd2Var = zc2VarB.a() == 1 ? pd2.e : pd2.c;
            } else {
                pd2Var = pd2.c;
            }
        } else {
            pd2Var = pd2.e;
        }
        return this.a.a(pd2Var);
    }

    public wo0(qd2 qd2Var, gt gtVar, zb2<go0> zb2Var, ao0 ao0Var) {
        y45.j(qd2Var, "statusController");
        y45.j(gtVar, "adBreak");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(ao0Var, "instreamSettings");
        this.a = qd2Var;
        this.b = gtVar;
        this.c = zb2Var;
        this.d = ao0Var;
    }
}

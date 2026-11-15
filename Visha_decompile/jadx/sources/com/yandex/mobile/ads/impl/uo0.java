package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class uo0 implements uf2 {
    private final tg2 a;
    private final wo0 b;

    public uo0(gt gtVar, zb2 zb2Var, qd2 qd2Var, vo0 vo0Var, tg2 tg2Var, wo0 wo0Var) {
        y45.j(gtVar, "adBreak");
        y45.j(zb2Var, "videoAdInfo");
        y45.j(qd2Var, "statusController");
        y45.j(vo0Var, "viewProvider");
        y45.j(tg2Var, "containerVisibleAreaValidator");
        y45.j(wo0Var, "videoVisibleStartValidator");
        this.a = tg2Var;
        this.b = wo0Var;
    }

    @Override
    public final boolean a() {
        return this.b.a() && this.a.a();
    }
}

package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class jo0 {
    private final ko0 a;
    private final zz b;

    public jo0(ko0 ko0Var, aj1 aj1Var) {
        y45.j(ko0Var, "instreamVideoAdControlsStateStorage");
        y45.j(aj1Var, "playerVolumeProvider");
        this.a = ko0Var;
        this.b = new zz(aj1Var);
    }

    public final ln0 a(zb2<go0> zb2Var) {
        y45.j(zb2Var, "videoAdInfo");
        ln0 ln0VarA = this.a.a(zb2Var);
        return ln0VarA == null ? this.b.a() : ln0VarA;
    }
}

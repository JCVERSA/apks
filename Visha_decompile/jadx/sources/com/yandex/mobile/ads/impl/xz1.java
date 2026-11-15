package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class xz1 extends o41 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xz1(List<? extends ig<?>> list, w71 w71Var) {
        super(list, w71Var);
        y45.j(list, "assets");
        y45.j(w71Var, "configuration");
    }

    @Override
    public final boolean a(a81.a aVar, List<? extends ig<?>> list) {
        y45.j(aVar, "validator");
        y45.j(list, "assets");
        b().c();
        return aVar.a(list);
    }
}

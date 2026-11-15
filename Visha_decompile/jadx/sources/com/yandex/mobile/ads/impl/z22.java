package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.io.IOException;

public final class z22 extends IOException {
    public final t50 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z22(t50 t50Var) {
        super("stream was reset: " + t50Var);
        y45.j(t50Var, "errorCode");
        this.b = t50Var;
    }
}

package com.yandex.mobile.ads.impl;

import defpackage.j1a;
import defpackage.u95;
import defpackage.y45;

public final class ep0 implements aj2<rx> {
    private final hr1<String> a;
    private final u95 b;
    private final ui2 c;

    public ep0(f32 f32Var, u95 u95Var, ui2 ui2Var) {
        y45.j(f32Var, "stringResponseParser");
        y45.j(u95Var, "jsonParser");
        y45.j(ui2Var, "responseMapper");
        this.a = f32Var;
        this.b = u95Var;
        this.c = ui2Var;
    }

    @Override
    public final rx a(xc1 xc1Var) {
        y45.j(xc1Var, "networkResponse");
        this.c.getClass();
        String strA = this.a.a(ui2.a(xc1Var));
        if (strA == null || j1a.o0(strA)) {
            return null;
        }
        u95 u95Var = this.b;
        u95Var.a();
        return (rx) u95Var.c(rx.Companion.serializer(), strA);
    }
}

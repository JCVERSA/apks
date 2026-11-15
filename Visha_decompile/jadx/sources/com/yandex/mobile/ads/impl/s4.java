package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class s4 {
    private final q4 a;
    private final r4 b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public s4(q4 q4Var) {
        this(q4Var, r4.a.a());
        int i = r4.e;
    }

    public final void a() {
        String strA = this.a.a();
        if (strA == null || strA.length() == 0) {
            return;
        }
        this.b.a(strA);
    }

    public final void b() {
        String strA = this.a.a();
        if (strA == null || strA.length() == 0) {
            return;
        }
        this.b.b(strA);
    }

    public s4(q4 q4Var, r4 r4Var) {
        y45.j(q4Var, "adIdProvider");
        y45.j(r4Var, "adIdStorage");
        this.a = q4Var;
        this.b = r4Var;
    }
}

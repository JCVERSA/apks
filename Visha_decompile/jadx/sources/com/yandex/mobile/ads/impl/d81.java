package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class d81 {
    private final qe2 a;
    private final n91 b;

    public d81(qe2 qe2Var, n91 n91Var) {
        y45.j(qe2Var, "videoEventController");
        y45.j(n91Var, "nativeMediaContent");
        this.a = qe2Var;
        this.b = n91Var;
    }

    public final e81 a() {
        db1 db1VarA = this.b.a();
        if (db1VarA == null) {
            return null;
        }
        qe2 qe2Var = this.a;
        return new e81(db1VarA, qe2Var, qe2Var);
    }
}

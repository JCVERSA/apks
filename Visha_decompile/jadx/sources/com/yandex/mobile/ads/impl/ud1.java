package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class ud1 {
    private final q62 a;
    private final n92 b;

    public ud1(q62 q62Var, n92 n92Var) {
        y45.j(q62Var, "notice");
        y45.j(n92Var, "validationResult");
        this.a = q62Var;
        this.b = n92Var;
    }

    public final q62 a() {
        return this.a;
    }

    public final n92 b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ud1)) {
            return false;
        }
        ud1 ud1Var = (ud1) obj;
        return y45.e(this.a, ud1Var.a) && y45.e(this.b, ud1Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "NoticeValidationHolder(notice=" + this.a + ", validationResult=" + this.b + ")";
    }
}

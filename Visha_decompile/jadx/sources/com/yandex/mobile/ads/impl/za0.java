package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class za0 {
    private final xj0 a;

    public za0(xj0 xj0Var) {
        this.a = xj0Var;
    }

    public final xj0 a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof za0) && y45.e(this.a, ((za0) obj).a);
    }

    public final int hashCode() {
        xj0 xj0Var = this.a;
        if (xj0Var == null) {
            return 0;
        }
        return xj0Var.hashCode();
    }

    public final String toString() {
        return "FeedbackValue(imageValue=" + this.a + ")";
    }
}

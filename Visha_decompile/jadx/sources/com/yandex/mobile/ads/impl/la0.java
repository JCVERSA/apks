package com.yandex.mobile.ads.impl;

import com.transsion.livecaption.constant.ICode;
import defpackage.y45;
import java.util.List;

public final class la0 {
    private final ea0 a;
    private final List<n90> b;

    public la0(ea0 ea0Var, List<n90> list) {
        y45.j(ea0Var, ICode.CALL.CALL_KEY_STATE);
        y45.j(list, "items");
        this.a = ea0Var;
        this.b = list;
    }

    public final ea0 a() {
        return this.a;
    }

    public final List<n90> b() {
        return this.b;
    }

    public final ea0 c() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof la0)) {
            return false;
        }
        la0 la0Var = (la0) obj;
        return y45.e(this.a, la0Var.a) && y45.e(this.b, la0Var.b);
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "FeedState(state=" + this.a + ", items=" + this.b + ")";
    }
}

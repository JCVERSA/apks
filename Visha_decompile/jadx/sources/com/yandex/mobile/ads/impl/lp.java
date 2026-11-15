package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class lp implements x {
    private final String a;

    public lp(String str) {
        y45.j(str, "actionType");
        this.a = str;
    }

    @Override
    public final String a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof lp) && y45.e(this.a, ((lp) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "CloseAction(actionType=" + this.a + ")";
    }
}

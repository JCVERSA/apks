package com.yandex.mobile.ads.impl;

import defpackage.y45;

public final class q6 extends Throwable {
    private final String b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q6(String str) {
        super(str);
        y45.j(str, "description");
        this.b = str;
    }

    public final String a() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof q6) && y45.e(this.b, ((q6) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override
    public final String toString() {
        return "AdPresentationError(description=" + this.b + ")";
    }
}

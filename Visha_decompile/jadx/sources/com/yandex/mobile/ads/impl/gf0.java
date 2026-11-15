package com.yandex.mobile.ads.impl;

public final class gf0 {
    private final boolean a;

    public gf0(boolean z) {
        this.a = z;
    }

    public final boolean a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof gf0) && this.a == ((gf0) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return "HandledAction(shouldTrackClick=" + this.a + ")";
    }
}

package com.yandex.mobile.ads.impl;

public final class hx {
    private final boolean a;

    public hx(boolean z) {
        this.a = z;
    }

    public final boolean a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof hx) && this.a == ((hx) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return "DebugPanelErrorIndicatorData(isEnabled=" + this.a + ")";
    }
}

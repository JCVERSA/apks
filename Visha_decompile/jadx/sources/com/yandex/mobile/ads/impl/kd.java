package com.yandex.mobile.ads.impl;

public final class kd {
    private final boolean a;

    public kd(boolean z) {
        this.a = z;
    }

    public final boolean a() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof kd) && this.a == ((kd) obj).a;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.a);
    }

    public final String toString() {
        return "AnalyticsIntegrationConfiguration(advertisingIdentifiersTracking=" + this.a + ")";
    }
}

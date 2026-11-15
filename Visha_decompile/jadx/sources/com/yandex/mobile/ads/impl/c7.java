package com.yandex.mobile.ads.impl;

public final class c7 {
    private final int a;
    private final boolean b;

    public c7(boolean z, int i) {
        this.a = i;
        this.b = z;
    }

    public final boolean a() {
        return this.b;
    }

    public final int b() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c7)) {
            return false;
        }
        c7 c7Var = (c7) obj;
        return this.a == c7Var.a && this.b == c7Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "AdQualityVerificationNetworkConfiguration(usagePercent=" + this.a + ", disabled=" + this.b + ")";
    }
}

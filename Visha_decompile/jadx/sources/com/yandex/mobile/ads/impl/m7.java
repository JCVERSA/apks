package com.yandex.mobile.ads.impl;

public final class m7 {
    private final int a;
    private final boolean b;

    public m7(boolean z, int i) {
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
        if (!(obj instanceof m7)) {
            return false;
        }
        m7 m7Var = (m7) obj;
        return this.a == m7Var.a && this.b == m7Var.b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "AdQualityVerifierNetworkConfiguration(usagePercent=" + this.a + ", disabled=" + this.b + ")";
    }
}

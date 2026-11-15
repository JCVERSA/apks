package io.appmetrica.analytics.impl;

public final class C4 {
    public final boolean a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final Boolean f;

    public C4(A4 a4) {
        this.a = a4.a;
        this.b = a4.b;
        this.c = a4.c;
        this.d = a4.d;
        this.e = a4.e;
        this.f = a4.f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C4.class != obj.getClass()) {
            return false;
        }
        C4 c4 = (C4) obj;
        if (this.a != c4.a || this.b != c4.b || this.c != c4.c || this.d != c4.d || this.e != c4.e) {
            return false;
        }
        Boolean bool = this.f;
        if (bool != null) {
            return bool.equals(c4.f);
        }
        return c4.f == null;
    }

    public final int hashCode() {
        int i = (((((((((this.a ? 1 : 0) * 31) + (this.b ? 1 : 0)) * 31) + (this.c ? 1 : 0)) * 31) + (this.d ? 1 : 0)) * 31) + (this.e ? 1 : 0)) * 31;
        Boolean bool = this.f;
        return i + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return "CollectingFlags{permissionsCollectingEnabled=" + this.a + ", featuresCollectingEnabled=" + this.b + ", googleAid=" + this.c + ", simInfo=" + this.d + ", huaweiOaid=" + this.e + ", sslPinning=" + this.f + '}';
    }
}

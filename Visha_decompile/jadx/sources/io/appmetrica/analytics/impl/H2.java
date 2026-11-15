package io.appmetrica.analytics.impl;

public final class H2 {
    public final G2 a;
    public final Boolean b;

    public H2(G2 g2, Boolean bool) {
        this.a = g2;
        this.b = bool;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || H2.class != obj.getClass()) {
            return false;
        }
        H2 h2 = (H2) obj;
        if (this.a != h2.a) {
            return false;
        }
        Boolean bool = this.b;
        if (bool != null) {
            return bool.equals(h2.b);
        }
        return h2.b == null;
    }

    public final int hashCode() {
        G2 g2 = this.a;
        int iHashCode = (g2 != null ? g2.hashCode() : 0) * 31;
        Boolean bool = this.b;
        return iHashCode + (bool != null ? bool.hashCode() : 0);
    }
}

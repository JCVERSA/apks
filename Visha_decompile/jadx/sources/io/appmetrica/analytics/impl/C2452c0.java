package io.appmetrica.analytics.impl;

public final class C2452c0 {
    public final String a;
    public final long b;

    public C2452c0(String str, long j) {
        this.a = str;
        this.b = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C2452c0.class != obj.getClass()) {
            return false;
        }
        C2452c0 c2452c0 = (C2452c0) obj;
        if (this.b != c2452c0.b) {
            return false;
        }
        String str = this.a;
        if (str != null) {
            if (str.equals(c2452c0.a)) {
                return true;
            }
        } else if (c2452c0.a == null) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = str != null ? str.hashCode() : 0;
        long j = this.b;
        return (iHashCode * 31) + ((int) (j ^ (j >>> 32)));
    }
}

package io.appmetrica.analytics.impl;

public final class C2978x3 {
    public final long a;

    public C2978x3(long j) {
        this.a = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C2978x3.class == obj.getClass() && this.a == ((C2978x3) obj).a;
    }

    public final int hashCode() {
        long j = this.a;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return "CacheControl{lastKnownLocationTtl=" + this.a + '}';
    }
}

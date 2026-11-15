package io.appmetrica.analytics.impl;

public final class C2648jm {
    public final long a;

    public C2648jm(long j) {
        this.a = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && C2648jm.class == obj.getClass() && this.a == ((C2648jm) obj).a;
    }

    public final int hashCode() {
        long j = this.a;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        return "StatSending{disabledReportingInterval=" + this.a + '}';
    }
}

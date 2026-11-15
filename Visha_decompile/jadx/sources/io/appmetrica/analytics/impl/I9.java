package io.appmetrica.analytics.impl;

public final class I9 {
    public final long a;

    public I9(long j) {
        this.a = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof I9) && this.a == ((I9) obj).a;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return "ExternalAttributionConfig(collectingInterval=" + this.a + ')';
    }
}

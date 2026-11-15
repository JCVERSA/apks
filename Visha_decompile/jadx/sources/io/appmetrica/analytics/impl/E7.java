package io.appmetrica.analytics.impl;

public final class E7 {
    public final long a;
    public final int b;

    public E7(int i, long j) {
        this.a = j;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof E7)) {
            return false;
        }
        E7 e7 = (E7) obj;
        return this.a == e7.a && this.b == e7.b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.b) + (Long.hashCode(this.a) * 31);
    }

    public final String toString() {
        return "DecimalProtoModel(mantissa=" + this.a + ", exponent=" + this.b + ')';
    }
}

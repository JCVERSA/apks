package io.appmetrica.analytics.impl;

public final class C2549fm {
    public final int a;

    public C2549fm(int i) {
        this.a = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C2549fm) && this.a == ((C2549fm) obj).a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.a);
    }

    public final String toString() {
        return "StartupUpdateConfig(intervalSeconds=" + this.a + ')';
    }
}

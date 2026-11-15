package defpackage;

public final class eph implements cph {
    public final String a;

    public eph(String str) {
        this.a = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof eph) {
            return this.a.equals(((eph) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return this.a;
    }
}

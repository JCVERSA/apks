package defpackage;

public final class ive {
    public final long a;
    public final String b;
    public final int c;

    public ive(long j, String str, int i) {
        this.a = j;
        this.b = str;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof ive)) {
            ive iveVar = (ive) obj;
            if (iveVar.a == this.a && iveVar.c == this.c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.a;
    }
}

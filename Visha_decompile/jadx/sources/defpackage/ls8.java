package defpackage;

public final class ls8 {
    public static final ls8 b = new ls8(false);
    public final boolean a;

    public ls8(boolean z) {
        this.a = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && ls8.class == obj.getClass() && this.a == ((ls8) obj).a;
    }

    public int hashCode() {
        return !this.a ? 1 : 0;
    }
}

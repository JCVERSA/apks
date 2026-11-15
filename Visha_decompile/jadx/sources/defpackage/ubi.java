package defpackage;

public final class ubi {
    public static final ubi b = new ubi("TINK");
    public static final ubi c = new ubi("CRUNCHY");
    public static final ubi d = new ubi("NO_PREFIX");
    public final String a;

    public ubi(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}

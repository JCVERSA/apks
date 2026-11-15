package defpackage;

public final class nei {
    public static final nei b = new nei("TINK");
    public static final nei c = new nei("CRUNCHY");
    public static final nei d = new nei("NO_PREFIX");
    public final String a;

    public nei(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}

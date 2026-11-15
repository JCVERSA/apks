package defpackage;

public final class qki {
    public static final qki b = new qki("TINK");
    public static final qki c = new qki("CRUNCHY");
    public static final qki d = new qki("LEGACY");
    public static final qki e = new qki("NO_PREFIX");
    public final String a;

    public qki(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}

package defpackage;

public final class hli {
    public static final hli b = new hli("TINK");
    public static final hli c = new hli("CRUNCHY");
    public static final hli d = new hli("LEGACY");
    public static final hli e = new hli("NO_PREFIX");
    public final String a;

    public hli(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}

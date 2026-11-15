package defpackage;

public final class jbi {
    public static final jbi b = new jbi("TINK");
    public static final jbi c = new jbi("CRUNCHY");
    public static final jbi d = new jbi("NO_PREFIX");
    public final String a;

    public jbi(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}

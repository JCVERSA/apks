package defpackage;

public final class jdi {
    public static final jdi b = new jdi("TINK");
    public static final jdi c = new jdi("NO_PREFIX");
    public final String a;

    public jdi(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}

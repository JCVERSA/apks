package defpackage;

public final class gei {
    public static final gei b = new gei("TINK");
    public static final gei c = new gei("NO_PREFIX");
    public final String a;

    public gei(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}

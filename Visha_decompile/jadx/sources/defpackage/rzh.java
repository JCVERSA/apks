package defpackage;

public final class rzh {
    public static final rzh a;
    public static volatile rzh b;

    static {
        rzh rzhVar = new rzh();
        a = rzhVar;
        b = rzhVar;
    }

    public static rzh a() {
        return b;
    }
}

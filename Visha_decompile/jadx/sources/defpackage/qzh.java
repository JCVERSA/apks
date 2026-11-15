package defpackage;

public final class qzh {
    public static final qzh a;
    public static volatile qzh b;

    static {
        qzh qzhVar = new qzh();
        a = qzhVar;
        b = qzhVar;
    }

    public static qzh a() {
        return b;
    }
}

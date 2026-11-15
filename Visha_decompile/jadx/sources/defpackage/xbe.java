package defpackage;

public abstract class xbe {
    public final rae a;

    public xbe(rae raeVar) {
        this.a = raeVar;
    }

    public abstract boolean a(u4h u4hVar);

    public abstract boolean b(u4h u4hVar, long j);

    public final boolean c(u4h u4hVar, long j) {
        return a(u4hVar) && b(u4hVar, j);
    }
}

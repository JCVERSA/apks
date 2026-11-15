package androidx.compose.runtime.snapshots;

public abstract class e0 {

    private int f3669a = SnapshotKt.H().f();

    private e0 f3670b;

    public abstract void c(e0 e0Var);

    public abstract e0 d();

    public final e0 e() {
        return this.f3670b;
    }

    public final int f() {
        return this.f3669a;
    }

    public final void g(e0 e0Var) {
        this.f3670b = e0Var;
    }

    public final void h(int i10) {
        this.f3669a = i10;
    }
}

package kotlinx.serialization.internal;

public abstract class p1 {
    public static void c(p1 p1Var, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: ensureCapacity");
        }
        if ((i11 & 1) != 0) {
            i10 = p1Var.d() + 1;
        }
        p1Var.b(i10);
    }

    public abstract Object a();

    public abstract void b(int i10);

    public abstract int d();
}

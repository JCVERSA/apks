package defpackage;

public abstract class bf8 {
    public static void c(bf8 bf8Var, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: ensureCapacity");
        }
        if ((i2 & 1) != 0) {
            i = bf8Var.d() + 1;
        }
        bf8Var.b(i);
    }

    public abstract Object a();

    public abstract void b(int i);

    public abstract int d();
}

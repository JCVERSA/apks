package kotlinx.coroutines.internal;

public abstract class i {
    public static final void a(int i10) {
        if (i10 >= 1) {
            return;
        }
        throw new IllegalArgumentException(("Expected positive parallelism level, but got " + i10).toString());
    }

    public static final kotlinx.coroutines.i0 b(kotlinx.coroutines.i0 i0Var, String str) {
        return str != null ? new r(i0Var, str) : i0Var;
    }
}

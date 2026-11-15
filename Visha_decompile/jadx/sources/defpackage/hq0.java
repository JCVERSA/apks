package defpackage;

import kotlinx.serialization.internal.ClassValueCache;
import kotlinx.serialization.internal.ClassValueParametrizedCache;

public abstract class hq0 {
    public static final boolean a;

    static {
        boolean z;
        try {
            Class.forName("java.lang.ClassValue");
            z = true;
        } catch (Throwable unused) {
            z = false;
        }
        a = z;
    }

    public static final qd9 a(e74 e74Var) {
        y45.j(e74Var, "factory");
        return a ? new ClassValueCache(e74Var) : new fe1(e74Var);
    }

    public static final lw7 b(s74 s74Var) {
        y45.j(s74Var, "factory");
        return a ? new ClassValueParametrizedCache(s74Var) : new he1(s74Var);
    }
}

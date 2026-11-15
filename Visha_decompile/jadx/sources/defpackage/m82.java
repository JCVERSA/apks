package defpackage;

import kotlin.reflect.jvm.internal.impl.resolve.deprecation.DeprecationLevelValue;

public abstract class m82 implements Comparable {
    @Override
    public int compareTo(m82 m82Var) {
        y45.j(m82Var, "other");
        int iCompareTo = b().compareTo(m82Var.b());
        if (iCompareTo == 0 && !d() && m82Var.d()) {
            return 1;
        }
        return iCompareTo;
    }

    public abstract DeprecationLevelValue b();

    public abstract boolean d();
}

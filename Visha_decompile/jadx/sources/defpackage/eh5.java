package defpackage;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.b;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.j;

public abstract class eh5 implements dd, gh5 {
    public int b;

    public eh5(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final int F0() {
        return fh5.a(this) ? super.hashCode() : (((I0().hashCode() * 31) + G0().hashCode()) * 31) + (J0() ? 1 : 0);
    }

    public abstract List G0();

    public abstract j H0();

    public abstract sbb I0();

    public abstract boolean J0();

    public abstract eh5 K0(c cVar);

    public abstract mgb L0();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof eh5)) {
            return false;
        }
        eh5 eh5Var = (eh5) obj;
        return J0() == eh5Var.J0() && gz9.a.a(L0(), eh5Var.L0());
    }

    @Override
    public md getAnnotations() {
        return b.a(H0());
    }

    public final int hashCode() {
        int i = this.b;
        if (i != 0) {
            return i;
        }
        int iF0 = F0();
        this.b = iF0;
        return iF0;
    }

    public abstract MemberScope p();

    public eh5() {
    }
}

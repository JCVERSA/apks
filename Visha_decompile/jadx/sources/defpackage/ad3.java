package defpackage;

import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.builtins.b;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorEntity;

public final class ad3 implements qq6 {
    public static final ad3 b = new ad3();
    public static final by6 c;
    public static final List d;
    public static final List e;
    public static final Set f;
    public static final d g;

    static {
        by6 by6VarJ = by6.j(ErrorEntity.ERROR_MODULE.getDebugText());
        y45.i(by6VarJ, "special(ErrorEntity.ERROR_MODULE.debugText)");
        c = by6VarJ;
        d = y71.k();
        e = y71.k();
        f = ye9.f();
        g = b.h.a();
    }

    @Override
    public pv7 C(o54 o54Var) {
        y45.j(o54Var, "fqName");
        throw new IllegalStateException("Should not be called!");
    }

    @Override
    public List M() {
        return e;
    }

    public by6 Q() {
        return c;
    }

    @Override
    public boolean S(qq6 qq6Var) {
        y45.j(qq6Var, "targetModule");
        return false;
    }

    @Override
    public xt1 a() {
        return this;
    }

    @Override
    public xt1 b() {
        return null;
    }

    @Override
    public md getAnnotations() {
        return md.u1.b();
    }

    @Override
    public by6 getName() {
        return Q();
    }

    @Override
    public Collection i(o54 o54Var, e74 e74Var) {
        y45.j(o54Var, "fqName");
        y45.j(e74Var, "nameFilter");
        return y71.k();
    }

    @Override
    public d o() {
        return g;
    }

    @Override
    public Object q0(bu1 bu1Var, Object obj) {
        y45.j(bu1Var, "visitor");
        return null;
    }

    @Override
    public Object s0(mq6 mq6Var) {
        y45.j(mq6Var, "capability");
        return null;
    }
}

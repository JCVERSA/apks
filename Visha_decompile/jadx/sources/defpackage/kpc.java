package defpackage;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.j;

public abstract class kpc extends eh5 {
    public kpc() {
        super(null);
    }

    @Override
    public List G0() {
        return M0().G0();
    }

    @Override
    public j H0() {
        return M0().H0();
    }

    @Override
    public sbb I0() {
        return M0().I0();
    }

    @Override
    public boolean J0() {
        return M0().J0();
    }

    @Override
    public final mgb L0() {
        eh5 eh5VarM0 = M0();
        while (eh5VarM0 instanceof kpc) {
            eh5VarM0 = ((kpc) eh5VarM0).M0();
        }
        y45.h(eh5VarM0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.UnwrappedType");
        return (mgb) eh5VarM0;
    }

    public abstract eh5 M0();

    public abstract boolean N0();

    @Override
    public MemberScope p() {
        return M0().p();
    }

    public String toString() {
        return N0() ? M0().toString() : "<Not computed yet>";
    }
}

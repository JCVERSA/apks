package defpackage;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.j;

public abstract class b82 extends sm9 {
    @Override
    public List G0() {
        return R0().G0();
    }

    @Override
    public j H0() {
        return R0().H0();
    }

    @Override
    public sbb I0() {
        return R0().I0();
    }

    @Override
    public boolean J0() {
        return R0().J0();
    }

    public abstract sm9 R0();

    @Override
    public sm9 S0(c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        eh5 eh5VarA = cVar.a(R0());
        y45.h(eh5VarA, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        return T0((sm9) eh5VarA);
    }

    public abstract b82 T0(sm9 sm9Var);

    @Override
    public MemberScope p() {
        return R0().p();
    }
}

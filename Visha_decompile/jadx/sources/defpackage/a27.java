package defpackage;

import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.j;
import kotlin.reflect.jvm.internal.impl.types.n;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public final class a27 extends b82 implements z17 {
    public final sm9 c;

    public a27(sm9 sm9Var) {
        y45.j(sm9Var, "delegate");
        this.c = sm9Var;
    }

    @Override
    public boolean C0() {
        return true;
    }

    @Override
    public boolean J0() {
        return false;
    }

    @Override
    public sm9 M0(boolean z) {
        return z ? R0().M0(true) : this;
    }

    @Override
    public sm9 R0() {
        return this.c;
    }

    public final sm9 U0(sm9 sm9Var) {
        sm9 sm9VarM0 = sm9Var.M0(false);
        return !TypeUtilsKt.t(sm9Var) ? sm9VarM0 : new a27(sm9VarM0);
    }

    @Override
    public a27 O0(j jVar) {
        y45.j(jVar, "newAttributes");
        return new a27(R0().O0(jVar));
    }

    @Override
    public a27 T0(sm9 sm9Var) {
        y45.j(sm9Var, "delegate");
        return new a27(sm9Var);
    }

    @Override
    public eh5 d0(eh5 eh5Var) {
        y45.j(eh5Var, "replacement");
        mgb mgbVarL0 = eh5Var.L0();
        if (!TypeUtilsKt.t(mgbVarL0) && !n.l(mgbVarL0)) {
            return mgbVarL0;
        }
        if (mgbVarL0 instanceof sm9) {
            return U0((sm9) mgbVarL0);
        }
        if (mgbVarL0 instanceof fy3) {
            fy3 fy3Var = (fy3) mgbVarL0;
            return ddb.d(KotlinTypeFactory.d(U0(fy3Var.Q0()), U0(fy3Var.R0())), ddb.a(mgbVarL0));
        }
        throw new IllegalStateException(("Incorrect type: " + mgbVarL0).toString());
    }
}

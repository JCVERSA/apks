package defpackage;

import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.j;

public final class vm9 extends b82 implements cdb {
    public final sm9 c;
    public final eh5 d;

    public vm9(sm9 sm9Var, eh5 eh5Var) {
        y45.j(sm9Var, "delegate");
        y45.j(eh5Var, "enhancement");
        this.c = sm9Var;
        this.d = eh5Var;
    }

    @Override
    public sm9 M0(boolean z) {
        mgb mgbVarD = ddb.d(Q().M0(z), l0().L0().M0(z));
        y45.h(mgbVarD, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        return (sm9) mgbVarD;
    }

    @Override
    public sm9 O0(j jVar) {
        y45.j(jVar, "newAttributes");
        mgb mgbVarD = ddb.d(Q().O0(jVar), l0());
        y45.h(mgbVarD, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        return (sm9) mgbVarD;
    }

    @Override
    public sm9 R0() {
        return this.c;
    }

    @Override
    public sm9 Q() {
        return R0();
    }

    @Override
    public vm9 S0(c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        eh5 eh5VarA = cVar.a(R0());
        y45.h(eh5VarA, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        return new vm9((sm9) eh5VarA, cVar.a(l0()));
    }

    @Override
    public vm9 T0(sm9 sm9Var) {
        y45.j(sm9Var, "delegate");
        return new vm9(sm9Var, l0());
    }

    @Override
    public eh5 l0() {
        return this.d;
    }

    @Override
    public String toString() {
        return "[@EnhancedForWarnings(" + l0() + ")] " + Q();
    }
}

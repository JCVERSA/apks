package defpackage;

import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.j;

public final class j2 extends b82 {
    public final sm9 c;
    public final sm9 d;

    public j2(sm9 sm9Var, sm9 sm9Var2) {
        y45.j(sm9Var, "delegate");
        y45.j(sm9Var2, "abbreviation");
        this.c = sm9Var;
        this.d = sm9Var2;
    }

    @Override
    public sm9 O0(j jVar) {
        y45.j(jVar, "newAttributes");
        return new j2(R0().O0(jVar), this.d);
    }

    @Override
    public sm9 R0() {
        return this.c;
    }

    public final sm9 U0() {
        return this.d;
    }

    @Override
    public j2 M0(boolean z) {
        return new j2(R0().M0(z), this.d.M0(z));
    }

    public final sm9 W() {
        return R0();
    }

    @Override
    public j2 S0(c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        eh5 eh5VarA = cVar.a(R0());
        y45.h(eh5VarA, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        eh5 eh5VarA2 = cVar.a(this.d);
        y45.h(eh5VarA2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        return new j2((sm9) eh5VarA, (sm9) eh5VarA2);
    }

    @Override
    public j2 T0(sm9 sm9Var) {
        y45.j(sm9Var, "delegate");
        return new j2(sm9Var, this.d);
    }
}

package defpackage;

import kotlin.reflect.jvm.internal.impl.types.j;

public abstract class c82 extends b82 {
    public final sm9 c;

    public c82(sm9 sm9Var) {
        y45.j(sm9Var, "delegate");
        this.c = sm9Var;
    }

    @Override
    public sm9 M0(boolean z) {
        return z == J0() ? this : R0().M0(z).O0(H0());
    }

    @Override
    public sm9 O0(j jVar) {
        y45.j(jVar, "newAttributes");
        return jVar != H0() ? new um9(this, jVar) : this;
    }

    @Override
    public sm9 R0() {
        return this.c;
    }
}

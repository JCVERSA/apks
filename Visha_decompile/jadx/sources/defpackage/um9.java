package defpackage;

import kotlin.reflect.jvm.internal.impl.types.j;

public final class um9 extends c82 {
    public final j d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public um9(sm9 sm9Var, j jVar) {
        super(sm9Var);
        y45.j(sm9Var, "delegate");
        y45.j(jVar, "attributes");
        this.d = jVar;
    }

    @Override
    public j H0() {
        return this.d;
    }

    @Override
    public um9 T0(sm9 sm9Var) {
        y45.j(sm9Var, "delegate");
        return new um9(sm9Var, H0());
    }
}

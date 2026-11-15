package kotlin.reflect.jvm.internal.impl.types;

import defpackage.c74;
import defpackage.eh5;
import defpackage.gh5;
import defpackage.kpc;
import defpackage.vx9;
import defpackage.x17;
import defpackage.y45;

public final class LazyWrappedType extends kpc {
    public final vx9 c;
    public final c74 d;
    public final x17 e;

    public LazyWrappedType(vx9 vx9Var, c74 c74Var) {
        y45.j(vx9Var, "storageManager");
        y45.j(c74Var, "computation");
        this.c = vx9Var;
        this.d = c74Var;
        this.e = vx9Var.c(c74Var);
    }

    @Override
    public eh5 M0() {
        return (eh5) this.e.invoke();
    }

    @Override
    public boolean N0() {
        return this.e.d();
    }

    @Override
    public LazyWrappedType S0(final kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        return new LazyWrappedType(this.c, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final eh5 invoke() {
                return cVar.a((gh5) this.d.invoke());
            }
        });
    }
}

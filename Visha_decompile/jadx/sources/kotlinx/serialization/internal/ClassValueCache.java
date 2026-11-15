package kotlinx.serialization.internal;

import defpackage.c74;
import defpackage.de5;
import defpackage.e74;
import defpackage.ed5;
import defpackage.ef5;
import defpackage.lw6;
import defpackage.lx0;
import defpackage.mp0;
import defpackage.qd9;
import defpackage.y45;

public final class ClassValueCache implements qd9 {
    public final e74 a;
    public final lx0 b;

    public ClassValueCache(e74 e74Var) {
        y45.j(e74Var, "compute");
        this.a = e74Var;
        this.b = new lx0();
    }

    @Override
    public ef5 a(final de5 de5Var) {
        y45.j(de5Var, "key");
        Object obj = this.b.get(ed5.b(de5Var));
        y45.i(obj, "get(key)");
        lw6 lw6Var = (lw6) obj;
        Object objA = lw6Var.a.get();
        if (objA == null) {
            objA = lw6Var.a(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final Object invoke() {
                    return new mp0((ef5) this.this$0.b().invoke(de5Var));
                }
            });
        }
        return ((mp0) objA).a;
    }

    public final e74 b() {
        return this.a;
    }
}

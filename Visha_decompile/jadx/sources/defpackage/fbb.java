package defpackage;

import kotlin.reflect.jvm.internal.impl.types.checker.b;

public final class fbb {
    public final hcb a;
    public final eh5 b;
    public final eh5 c;

    public fbb(hcb hcbVar, eh5 eh5Var, eh5 eh5Var2) {
        y45.j(hcbVar, "typeParameter");
        y45.j(eh5Var, "inProjection");
        y45.j(eh5Var2, "outProjection");
        this.a = hcbVar;
        this.b = eh5Var;
        this.c = eh5Var2;
    }

    public final eh5 a() {
        return this.b;
    }

    public final eh5 b() {
        return this.c;
    }

    public final hcb c() {
        return this.a;
    }

    public final boolean d() {
        return b.a.c(this.b, this.c);
    }
}

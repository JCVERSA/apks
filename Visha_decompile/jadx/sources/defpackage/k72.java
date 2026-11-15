package defpackage;

import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.l;

public abstract class k72 extends l {
    public final l c;

    public k72(l lVar) {
        y45.j(lVar, "substitution");
        this.c = lVar;
    }

    @Override
    public boolean a() {
        return this.c.a();
    }

    @Override
    public md d(md mdVar) {
        y45.j(mdVar, "annotations");
        return this.c.d(mdVar);
    }

    @Override
    public mcb e(eh5 eh5Var) {
        y45.j(eh5Var, "key");
        return this.c.e(eh5Var);
    }

    @Override
    public boolean f() {
        return this.c.f();
    }

    @Override
    public eh5 g(eh5 eh5Var, Variance variance) {
        y45.j(eh5Var, "topLevelType");
        y45.j(variance, "position");
        return this.c.g(eh5Var, variance);
    }
}

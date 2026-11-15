package kotlin.reflect.jvm.internal.impl.types;

import defpackage.eh5;
import defpackage.mcb;
import defpackage.md;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class d extends l {
    public static final a e = new a(null);
    public final l c;
    public final l d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final l a(l lVar, l lVar2) {
            y45.j(lVar, "first");
            y45.j(lVar2, "second");
            if (lVar.f()) {
                return lVar2;
            }
            return lVar2.f() ? lVar : new d(lVar, lVar2, null);
        }

        public a() {
        }
    }

    public d(l lVar, l lVar2, DefaultConstructorMarker defaultConstructorMarker) {
        this(lVar, lVar2);
    }

    public static final l i(l lVar, l lVar2) {
        return e.a(lVar, lVar2);
    }

    @Override
    public boolean a() {
        return this.c.a() || this.d.a();
    }

    @Override
    public boolean b() {
        return this.c.b() || this.d.b();
    }

    @Override
    public md d(md mdVar) {
        y45.j(mdVar, "annotations");
        return this.d.d(this.c.d(mdVar));
    }

    @Override
    public mcb e(eh5 eh5Var) {
        y45.j(eh5Var, "key");
        mcb mcbVarE = this.c.e(eh5Var);
        return mcbVarE == null ? this.d.e(eh5Var) : mcbVarE;
    }

    @Override
    public boolean f() {
        return false;
    }

    @Override
    public eh5 g(eh5 eh5Var, Variance variance) {
        y45.j(eh5Var, "topLevelType");
        y45.j(variance, "position");
        return this.d.g(this.c.g(eh5Var, variance), variance);
    }

    public d(l lVar, l lVar2) {
        this.c = lVar;
        this.d = lVar2;
    }
}

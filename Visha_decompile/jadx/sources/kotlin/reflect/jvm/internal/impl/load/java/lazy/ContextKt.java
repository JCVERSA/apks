package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import defpackage.bx0;
import defpackage.c74;
import defpackage.e85;
import defpackage.gj5;
import defpackage.md;
import defpackage.t85;
import defpackage.u85;
import defpackage.xt1;
import defpackage.y45;
import defpackage.yi5;
import kotlin.LazyThreadSafetyMode;
import kotlin.b;

public abstract class ContextKt {
    public static final gj5 a(gj5 gj5Var, xt1 xt1Var, t85 t85Var, int i, yi5 yi5Var) {
        return new gj5(gj5Var.a(), t85Var != null ? new LazyJavaTypeParameterResolver(gj5Var, xt1Var, t85Var, i) : gj5Var.f(), yi5Var);
    }

    public static final gj5 b(gj5 gj5Var, a aVar) {
        y45.j(gj5Var, "<this>");
        y45.j(aVar, "typeParameterResolver");
        return new gj5(gj5Var.a(), aVar, gj5Var.c());
    }

    public static final gj5 c(final gj5 gj5Var, final bx0 bx0Var, t85 t85Var, int i) {
        y45.j(gj5Var, "<this>");
        y45.j(bx0Var, "containingDeclaration");
        return a(gj5Var, bx0Var, t85Var, i, b.b(LazyThreadSafetyMode.NONE, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final u85 invoke() {
                return ContextKt.g(gj5Var, bx0Var.getAnnotations());
            }
        }));
    }

    public static gj5 d(gj5 gj5Var, bx0 bx0Var, t85 t85Var, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            t85Var = null;
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return c(gj5Var, bx0Var, t85Var, i);
    }

    public static final gj5 e(gj5 gj5Var, xt1 xt1Var, t85 t85Var, int i) {
        y45.j(gj5Var, "<this>");
        y45.j(xt1Var, "containingDeclaration");
        y45.j(t85Var, "typeParameterOwner");
        return a(gj5Var, xt1Var, t85Var, i, gj5Var.c());
    }

    public static gj5 f(gj5 gj5Var, xt1 xt1Var, t85 t85Var, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return e(gj5Var, xt1Var, t85Var, i);
    }

    public static final u85 g(gj5 gj5Var, md mdVar) {
        y45.j(gj5Var, "<this>");
        y45.j(mdVar, "additionalAnnotations");
        return gj5Var.a().a().c(gj5Var.b(), mdVar);
    }

    public static final gj5 h(final gj5 gj5Var, final md mdVar) {
        y45.j(gj5Var, "<this>");
        y45.j(mdVar, "additionalAnnotations");
        return mdVar.isEmpty() ? gj5Var : new gj5(gj5Var.a(), gj5Var.f(), b.b(LazyThreadSafetyMode.NONE, new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final u85 invoke() {
                return ContextKt.g(gj5Var, mdVar);
            }
        }));
    }

    public static final gj5 i(gj5 gj5Var, e85 e85Var) {
        y45.j(gj5Var, "<this>");
        y45.j(e85Var, "components");
        return new gj5(e85Var, gj5Var.f(), gj5Var.c());
    }
}

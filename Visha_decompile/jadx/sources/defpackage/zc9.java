package defpackage;

import java.util.Iterator;

public abstract class zc9 extends uc9 {

    public static final class a implements pc9 {
        public final Iterator a;

        public a(Iterator it) {
            this.a = it;
        }

        @Override
        public Iterator iterator() {
            return this.a;
        }
    }

    public static pc9 g(Iterator it) {
        y45.j(it, "<this>");
        return h(new a(it));
    }

    public static final pc9 h(pc9 pc9Var) {
        y45.j(pc9Var, "<this>");
        return pc9Var instanceof wf1 ? pc9Var : new wf1(pc9Var);
    }

    public static pc9 i() {
        return v93.a;
    }

    public static final pc9 j(pc9 pc9Var) {
        y45.j(pc9Var, "<this>");
        return k(pc9Var, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return zc9.l((pc9) obj);
            }
        });
    }

    public static final pc9 k(pc9 pc9Var, e74 e74Var) {
        return pc9Var instanceof j7b ? ((j7b) pc9Var).d(e74Var) : new cy3(pc9Var, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return zc9.m(obj);
            }
        }, e74Var);
    }

    public static final Iterator l(pc9 pc9Var) {
        y45.j(pc9Var, "it");
        return pc9Var.iterator();
    }

    public static final Object m(Object obj) {
        return obj;
    }

    public static pc9 n(final c74 c74Var) {
        y45.j(c74Var, "nextFunction");
        return h(new pd4(c74Var, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return zc9.q(c74Var, obj);
            }
        }));
    }

    public static pc9 o(c74 c74Var, e74 e74Var) {
        y45.j(c74Var, "seedFunction");
        y45.j(e74Var, "nextFunction");
        return new pd4(c74Var, e74Var);
    }

    public static pc9 p(final Object obj, e74 e74Var) {
        y45.j(e74Var, "nextFunction");
        return obj == null ? v93.a : new pd4(new c74() {
            @Override
            public final Object invoke() {
                return zc9.r(obj);
            }
        }, e74Var);
    }

    public static final Object q(c74 c74Var, Object obj) {
        y45.j(obj, "it");
        return c74Var.invoke();
    }

    public static final Object r(Object obj) {
        return obj;
    }

    public static final pc9 s(Object... objArr) {
        y45.j(objArr, "elements");
        return hi.K(objArr);
    }
}

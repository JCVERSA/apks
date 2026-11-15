package kotlinx.serialization;

import defpackage.c74;
import defpackage.de5;
import defpackage.e74;
import defpackage.ef5;
import defpackage.ff5;
import defpackage.he5;
import defpackage.hq0;
import defpackage.lw7;
import defpackage.qd9;
import defpackage.qn0;
import defpackage.s74;
import defpackage.sd9;
import defpackage.ud9;
import defpackage.y45;
import java.util.List;

public abstract class SerializersCacheKt {
    public static final qd9 a = hq0.a(new e74() {
        @Override
        public final ef5 invoke(de5 de5Var) {
            y45.j(de5Var, "it");
            return sd9.c(de5Var);
        }
    });
    public static final qd9 b = hq0.a(new e74() {
        @Override
        public final ef5 invoke(de5 de5Var) {
            ef5 ef5VarT;
            y45.j(de5Var, "it");
            ef5 ef5VarC = sd9.c(de5Var);
            if (ef5VarC == null || (ef5VarT = qn0.t(ef5VarC)) == null) {
                return null;
            }
            return ef5VarT;
        }
    });
    public static final lw7 c = hq0.b(new s74() {
        @Override
        public final ef5 invoke(de5 de5Var, final List<? extends ff5> list) {
            y45.j(de5Var, "clazz");
            y45.j(list, "types");
            List listE = sd9.e(ud9.a(), list, true);
            y45.g(listE);
            return sd9.a(de5Var, listE, new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                @Override
                public final he5 invoke() {
                    return list.get(0).j();
                }
            });
        }
    });
    public static final lw7 d = hq0.b(new s74() {
        @Override
        public final ef5 invoke(de5 de5Var, final List<? extends ff5> list) {
            ef5 ef5VarT;
            y45.j(de5Var, "clazz");
            y45.j(list, "types");
            List listE = sd9.e(ud9.a(), list, true);
            y45.g(listE);
            ef5 ef5VarA = sd9.a(de5Var, listE, new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(0);
                }

                @Override
                public final he5 invoke() {
                    return list.get(0).j();
                }
            });
            if (ef5VarA == null || (ef5VarT = qn0.t(ef5VarA)) == null) {
                return null;
            }
            return ef5VarT;
        }
    });

    public static final ef5 a(de5 de5Var, boolean z) {
        y45.j(de5Var, "clazz");
        if (z) {
            return b.a(de5Var);
        }
        ef5 ef5VarA = a.a(de5Var);
        if (ef5VarA != null) {
            return ef5VarA;
        }
        return null;
    }

    public static final Object b(de5 de5Var, List list, boolean z) {
        y45.j(de5Var, "clazz");
        y45.j(list, "types");
        return !z ? c.a(de5Var, list) : d.a(de5Var, list);
    }
}

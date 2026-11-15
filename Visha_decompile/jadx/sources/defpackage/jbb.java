package defpackage;

import kotlin.reflect.jvm.internal.impl.types.j;

public interface jbb {

    public static final class a {
        public static j a(jbb jbbVar, md mdVar, sbb sbbVar, xt1 xt1Var, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toAttributes");
            }
            if ((i & 2) != 0) {
                sbbVar = null;
            }
            if ((i & 4) != 0) {
                xt1Var = null;
            }
            return jbbVar.a(mdVar, sbbVar, xt1Var);
        }
    }

    j a(md mdVar, sbb sbbVar, xt1 xt1Var);
}

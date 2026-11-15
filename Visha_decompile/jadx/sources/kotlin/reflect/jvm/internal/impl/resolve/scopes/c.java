package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import defpackage.by6;
import defpackage.e74;
import defpackage.or5;
import defpackage.px0;
import defpackage.u82;
import java.util.Collection;

public interface c {

    public static final class a {
        public static Collection a(c cVar, u82 u82Var, e74 e74Var, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getContributedDescriptors");
            }
            if ((i & 1) != 0) {
                u82Var = u82.o;
            }
            if ((i & 2) != 0) {
                e74Var = MemberScope.a.a();
            }
            return cVar.g(u82Var, e74Var);
        }
    }

    px0 f(by6 by6Var, or5 or5Var);

    Collection g(u82 u82Var, e74 e74Var);
}

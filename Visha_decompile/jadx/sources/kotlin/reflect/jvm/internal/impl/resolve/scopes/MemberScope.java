package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import defpackage.by6;
import defpackage.dn6;
import defpackage.e74;
import defpackage.or5;
import defpackage.y45;
import defpackage.ye9;
import java.util.Collection;
import java.util.Set;

public interface MemberScope extends c {
    public static final Companion a = Companion.a;

    public static final class Companion {
        public static final Companion a = new Companion();
        public static final e74 b = new e74() {
            @Override
            public final Boolean invoke(by6 by6Var) {
                y45.j(by6Var, "it");
                return Boolean.TRUE;
            }
        };

        public final e74 a() {
            return b;
        }
    }

    public static final class a extends dn6 {
        public static final a b = new a();

        @Override
        public Set a() {
            return ye9.f();
        }

        @Override
        public Set d() {
            return ye9.f();
        }

        @Override
        public Set e() {
            return ye9.f();
        }
    }

    Set a();

    Collection b(by6 by6Var, or5 or5Var);

    Collection c(by6 by6Var, or5 or5Var);

    Set d();

    Set e();
}

package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.g;

public interface v18 {

    public static final class a implements v18 {
        public static final a a = new a();

        @Override
        public boolean e(qw0 qw0Var, g gVar) {
            y45.j(qw0Var, "classDescriptor");
            y45.j(gVar, "functionDescriptor");
            return true;
        }
    }

    public static final class b implements v18 {
        public static final b a = new b();

        @Override
        public boolean e(qw0 qw0Var, g gVar) {
            y45.j(qw0Var, "classDescriptor");
            y45.j(gVar, "functionDescriptor");
            return !gVar.getAnnotations().h(w18.a());
        }
    }

    boolean e(qw0 qw0Var, g gVar);
}

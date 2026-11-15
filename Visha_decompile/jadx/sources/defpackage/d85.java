package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.g;

public interface d85 {
    public static final d85 a = new a();

    public static class a implements d85 {
        public static void f(int i) {
            Object[] objArr = new Object[3];
            switch (i) {
                case 1:
                    objArr[0] = "member";
                    break;
                case 2:
                case 4:
                case 6:
                case 8:
                    objArr[0] = "descriptor";
                    break;
                case 3:
                    objArr[0] = "element";
                    break;
                case 5:
                    objArr[0] = "field";
                    break;
                case 7:
                    objArr[0] = "javaClass";
                    break;
                default:
                    objArr[0] = "fqName";
                    break;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/components/JavaResolverCache$1";
            switch (i) {
                case 1:
                case 2:
                    objArr[2] = "recordMethod";
                    break;
                case 3:
                case 4:
                    objArr[2] = "recordConstructor";
                    break;
                case 5:
                case 6:
                    objArr[2] = "recordField";
                    break;
                case 7:
                case 8:
                    objArr[2] = "recordClass";
                    break;
                default:
                    objArr[2] = "getClassResolvedFromSource";
                    break;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override
        public qw0 a(o54 o54Var) {
            if (o54Var != null) {
                return null;
            }
            f(0);
            return null;
        }

        @Override
        public void b(k75 k75Var, c cVar) {
            if (k75Var == null) {
                f(3);
            }
            if (cVar == null) {
                f(4);
            }
        }

        @Override
        public void c(s65 s65Var, qw0 qw0Var) {
            if (s65Var == null) {
                f(7);
            }
            if (qw0Var == null) {
                f(8);
            }
        }

        @Override
        public void d(m75 m75Var, ti8 ti8Var) {
            if (m75Var == null) {
                f(5);
            }
            if (ti8Var == null) {
                f(6);
            }
        }

        @Override
        public void e(r75 r75Var, g gVar) {
            if (r75Var == null) {
                f(1);
            }
            if (gVar == null) {
                f(2);
            }
        }
    }

    qw0 a(o54 o54Var);

    void b(k75 k75Var, c cVar);

    void c(s65 s65Var, qw0 qw0Var);

    void d(m75 m75Var, ti8 ti8Var);

    void e(r75 r75Var, g gVar);
}

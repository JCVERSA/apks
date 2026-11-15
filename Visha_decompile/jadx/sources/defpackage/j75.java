package defpackage;

import java.util.HashMap;
import java.util.Map;

public abstract class j75 {
    public static final c92 a;
    public static final c92 b;
    public static final c92 c;
    public static final Map d;

    public static class a extends j72 {
        public a(tfc tfcVar) {
            super(tfcVar);
        }

        private static void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$1";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override
        public boolean e(to8 to8Var, eu1 eu1Var, xt1 xt1Var, boolean z) {
            if (eu1Var == null) {
                g(0);
            }
            if (xt1Var == null) {
                g(1);
            }
            return j75.d(eu1Var, xt1Var);
        }
    }

    public static class b extends j72 {
        public b(tfc tfcVar) {
            super(tfcVar);
        }

        private static void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$2";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override
        public boolean e(to8 to8Var, eu1 eu1Var, xt1 xt1Var, boolean z) {
            if (eu1Var == null) {
                g(0);
            }
            if (xt1Var == null) {
                g(1);
            }
            return j75.e(to8Var, eu1Var, xt1Var);
        }
    }

    public static class c extends j72 {
        public c(tfc tfcVar) {
            super(tfcVar);
        }

        private static void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities$3";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override
        public boolean e(to8 to8Var, eu1 eu1Var, xt1 xt1Var, boolean z) {
            if (eu1Var == null) {
                g(0);
            }
            if (xt1Var == null) {
                g(1);
            }
            return j75.e(to8Var, eu1Var, xt1Var);
        }
    }

    static {
        a aVar = new a(y85.c);
        a = aVar;
        b bVar = new b(a95.c);
        b = bVar;
        c cVar = new c(z85.c);
        c = cVar;
        d = new HashMap();
        f(aVar);
        f(bVar);
        f(cVar);
    }

    public static void a(int i) {
        String str = (i == 5 || i == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 5 || i == 6) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "from";
                break;
            case 2:
                objArr[0] = "first";
                break;
            case 3:
                objArr[0] = "second";
                break;
            case 4:
                objArr[0] = "visibility";
                break;
            case 5:
            case 6:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities";
                break;
            default:
                objArr[0] = "what";
                break;
        }
        if (i == 5 || i == 6) {
            objArr[1] = "toDescriptorVisibility";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities";
        }
        if (i == 2 || i == 3) {
            objArr[2] = "areInSamePackage";
        } else if (i == 4) {
            objArr[2] = "toDescriptorVisibility";
        } else if (i != 5 && i != 6) {
            objArr[2] = "isVisibleForProtectedAndPackage";
        }
        String str2 = String.format(str, objArr);
        if (i != 5 && i != 6) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static boolean d(xt1 xt1Var, xt1 xt1Var2) {
        if (xt1Var == null) {
            a(2);
        }
        if (xt1Var2 == null) {
            a(3);
        }
        dv7 dv7Var = (dv7) y82.r(xt1Var, dv7.class, false);
        dv7 dv7Var2 = (dv7) y82.r(xt1Var2, dv7.class, false);
        return (dv7Var2 == null || dv7Var == null || !dv7Var.d().equals(dv7Var2.d())) ? false : true;
    }

    public static boolean e(to8 to8Var, eu1 eu1Var, xt1 xt1Var) {
        if (eu1Var == null) {
            a(0);
        }
        if (xt1Var == null) {
            a(1);
        }
        if (d(y82.M(eu1Var), xt1Var)) {
            return true;
        }
        return b92.c.e(to8Var, eu1Var, xt1Var, false);
    }

    public static void f(c92 c92Var) {
        d.put(c92Var.b(), c92Var);
    }

    public static c92 g(tfc tfcVar) {
        if (tfcVar == null) {
            a(4);
        }
        c92 c92Var = (c92) d.get(tfcVar);
        if (c92Var != null) {
            return c92Var;
        }
        c92 c92VarJ = b92.j(tfcVar);
        if (c92VarJ == null) {
            a(5);
        }
        return c92VarJ;
    }
}

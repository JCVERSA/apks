package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.ServiceLoader;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

public abstract class b92 {
    public static final c92 a;
    public static final c92 b;
    public static final c92 c;
    public static final c92 d;
    public static final c92 e;
    public static final c92 f;
    public static final c92 g;
    public static final c92 h;
    public static final c92 i;
    public static final Set j;
    public static final Map k;
    public static final c92 l;
    public static final to8 m;
    public static final to8 n;
    public static final to8 o;
    public static final tq6 p;
    public static final Map q;

    public static class a implements to8 {
        @Override
        public eh5 getType() {
            throw new IllegalStateException("This method should not be called");
        }
    }

    public static class b implements to8 {
        @Override
        public eh5 getType() {
            throw new IllegalStateException("This method should not be called");
        }
    }

    public static class c implements to8 {
        @Override
        public eh5 getType() {
            throw new IllegalStateException("This method should not be called");
        }
    }

    public static class d extends j72 {
        public d(tfc tfcVar) {
            super(tfcVar);
        }

        public static void g(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "what";
            } else if (i != 2) {
                objArr[0] = "descriptor";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1";
            if (i == 1 || i == 2) {
                objArr[2] = "isVisible";
            } else {
                objArr[2] = "hasContainingSourceFile";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean e(to8 to8Var, eu1 eu1Var, xt1 xt1Var, boolean z) {
            if (eu1Var == 0) {
                g(1);
            }
            if (xt1Var == null) {
                g(2);
            }
            if (y82.J(eu1Var) && h(xt1Var)) {
                return b92.f(eu1Var, xt1Var);
            }
            if (eu1Var instanceof kotlin.reflect.jvm.internal.impl.descriptors.c) {
                qx0 qx0VarB = ((kotlin.reflect.jvm.internal.impl.descriptors.c) eu1Var).b();
                if (z && y82.G(qx0VarB) && y82.J(qx0VarB) && (xt1Var instanceof kotlin.reflect.jvm.internal.impl.descriptors.c) && y82.J(xt1Var.b()) && b92.f(eu1Var, xt1Var)) {
                    return true;
                }
            }
            while (eu1Var != 0) {
                eu1Var = eu1Var.b();
                if (((eu1Var instanceof qw0) && !y82.x(eu1Var)) || (eu1Var instanceof dv7)) {
                    break;
                }
            }
            if (eu1Var == 0) {
                return false;
            }
            while (xt1Var != null) {
                if (eu1Var == xt1Var) {
                    return true;
                }
                if (xt1Var instanceof dv7) {
                    return (eu1Var instanceof dv7) && ((dv7) eu1Var).d().equals(((dv7) xt1Var).d()) && y82.b(xt1Var, eu1Var);
                }
                xt1Var = xt1Var.b();
            }
            return false;
        }

        public final boolean h(xt1 xt1Var) {
            if (xt1Var == null) {
                g(0);
            }
            return y82.j(xt1Var) != zt9.a;
        }
    }

    public static class e extends j72 {
        public e(tfc tfcVar) {
            super(tfcVar);
        }

        private static void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2";
            objArr[2] = "isVisible";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override
        public boolean e(to8 to8Var, eu1 eu1Var, xt1 xt1Var, boolean z) {
            xt1 xt1VarQ;
            if (eu1Var == null) {
                g(0);
            }
            if (xt1Var == null) {
                g(1);
            }
            if (!b92.a.e(to8Var, eu1Var, xt1Var, z)) {
                return false;
            }
            if (to8Var == b92.n) {
                return true;
            }
            if (to8Var == b92.m || (xt1VarQ = y82.q(eu1Var, qw0.class)) == null || !(to8Var instanceof wha)) {
                return false;
            }
            return ((wha) to8Var).k().a().equals(xt1VarQ.a());
        }
    }

    public static class f extends j72 {
        public f(tfc tfcVar) {
            super(tfcVar);
        }

        private static void g(int i) {
            Object[] objArr = new Object[3];
            if (i == 1) {
                objArr[0] = "from";
            } else if (i == 2) {
                objArr[0] = "whatDeclaration";
            } else if (i != 3) {
                objArr[0] = "what";
            } else {
                objArr[0] = "fromClass";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3";
            if (i == 2 || i == 3) {
                objArr[2] = "doesReceiverFitForProtectedVisibility";
            } else {
                objArr[2] = "isVisible";
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override
        public boolean e(to8 to8Var, eu1 eu1Var, xt1 xt1Var, boolean z) {
            qw0 qw0Var;
            if (eu1Var == null) {
                g(0);
            }
            if (xt1Var == null) {
                g(1);
            }
            qw0 qw0Var2 = (qw0) y82.q(eu1Var, qw0.class);
            qw0 qw0Var3 = (qw0) y82.r(xt1Var, qw0.class, false);
            if (qw0Var3 == null) {
                return false;
            }
            if (qw0Var2 != null && y82.x(qw0Var2) && (qw0Var = (qw0) y82.q(qw0Var2, qw0.class)) != null && y82.H(qw0Var3, qw0Var)) {
                return true;
            }
            eu1 eu1VarM = y82.M(eu1Var);
            qw0 qw0Var4 = (qw0) y82.q(eu1VarM, qw0.class);
            if (qw0Var4 == null) {
                return false;
            }
            if (y82.H(qw0Var3, qw0Var4) && h(to8Var, eu1VarM, qw0Var3)) {
                return true;
            }
            return e(to8Var, eu1Var, qw0Var3.b(), z);
        }

        public final boolean h(to8 to8Var, eu1 eu1Var, qw0 qw0Var) {
            if (eu1Var == null) {
                g(2);
            }
            if (qw0Var == null) {
                g(3);
            }
            if (to8Var == b92.o) {
                return false;
            }
            if (!(eu1Var instanceof CallableMemberDescriptor) || (eu1Var instanceof kotlin.reflect.jvm.internal.impl.descriptors.c) || to8Var == b92.n) {
                return true;
            }
            if (to8Var == b92.m || to8Var == null) {
                return false;
            }
            eh5 type = to8Var.getType();
            return y82.I(type, qw0Var) || kotlin.reflect.jvm.internal.impl.types.e.a(type);
        }
    }

    public static class g extends j72 {
        public g(tfc tfcVar) {
            super(tfcVar);
        }

        private static void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$4";
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
            if (y82.g(xt1Var).S(y82.g(eu1Var))) {
                return b92.p.a(eu1Var, xt1Var);
            }
            return false;
        }
    }

    public static class h extends j72 {
        public h(tfc tfcVar) {
            super(tfcVar);
        }

        private static void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$5";
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
            return true;
        }
    }

    public static class i extends j72 {
        public i(tfc tfcVar) {
            super(tfcVar);
        }

        private static void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$6";
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
            throw new IllegalStateException("This method shouldn't be invoked for LOCAL visibility");
        }
    }

    public static class j extends j72 {
        public j(tfc tfcVar) {
            super(tfcVar);
        }

        private static void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$7";
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
            throw new IllegalStateException("Visibility is unknown yet");
        }
    }

    public static class k extends j72 {
        public k(tfc tfcVar) {
            super(tfcVar);
        }

        private static void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$8";
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
            return false;
        }
    }

    public static class l extends j72 {
        public l(tfc tfcVar) {
            super(tfcVar);
        }

        private static void g(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "what";
            } else {
                objArr[0] = "from";
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$9";
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
            return false;
        }
    }

    static {
        d dVar = new d(sfc.e.c);
        a = dVar;
        e eVar = new e(sfc.f.c);
        b = eVar;
        f fVar = new f(sfc.g.c);
        c = fVar;
        g gVar = new g(sfc.b.c);
        d = gVar;
        h hVar = new h(sfc.h.c);
        e = hVar;
        i iVar = new i(sfc.d.c);
        f = iVar;
        j jVar = new j(sfc.a.c);
        g = jVar;
        k kVar = new k(sfc.c.c);
        h = kVar;
        l lVar = new l(sfc.i.c);
        i = lVar;
        j = Collections.unmodifiableSet(ye9.j(dVar, eVar, gVar, iVar));
        HashMap mapE = v71.e(4);
        mapE.put(eVar, 0);
        mapE.put(dVar, 0);
        mapE.put(gVar, 1);
        mapE.put(fVar, 1);
        mapE.put(hVar, 2);
        k = Collections.unmodifiableMap(mapE);
        l = hVar;
        m = new a();
        n = new b();
        o = new c();
        Iterator it = ServiceLoader.load(tq6.class, tq6.class.getClassLoader()).iterator();
        p = it.hasNext() ? (tq6) it.next() : tq6.a.a;
        q = new HashMap();
        i(dVar);
        i(eVar);
        i(fVar);
        i(gVar);
        i(hVar);
        i(iVar);
        i(jVar);
        i(kVar);
        i(lVar);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x003a  */
    public static void a(int i2) {
        String str = i2 != 16 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i2 != 16 ? 3 : 2];
        if (i2 != 1 && i2 != 3 && i2 != 5 && i2 != 7) {
            switch (i2) {
                case 9:
                    objArr[0] = "from";
                    break;
                case 10:
                case 12:
                    objArr[0] = "first";
                    break;
                case 11:
                case 13:
                    objArr[0] = "second";
                    break;
                case 14:
                case 15:
                    objArr[0] = "visibility";
                    break;
                case 16:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities";
                    break;
                default:
                    objArr[0] = "what";
                    break;
            }
        } else {
            objArr[0] = "from";
        }
        if (i2 != 16) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities";
        } else {
            objArr[1] = "toDescriptorVisibility";
        }
        switch (i2) {
            case 2:
            case 3:
                objArr[2] = "isVisibleIgnoringReceiver";
                break;
            case 4:
            case 5:
                objArr[2] = "isVisibleWithAnyReceiver";
                break;
            case 6:
            case 7:
                objArr[2] = "inSameFile";
                break;
            case 8:
            case 9:
                objArr[2] = "findInvisibleMember";
                break;
            case 10:
            case 11:
                objArr[2] = "compareLocal";
                break;
            case 12:
            case 13:
                objArr[2] = "compare";
                break;
            case 14:
                objArr[2] = "isPrivate";
                break;
            case 15:
                objArr[2] = "toDescriptorVisibility";
                break;
            case 16:
                break;
            default:
                objArr[2] = "isVisible";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i2 == 16) {
            throw new IllegalStateException(str2);
        }
    }

    public static Integer d(c92 c92Var, c92 c92Var2) {
        if (c92Var == null) {
            a(12);
        }
        if (c92Var2 == null) {
            a(13);
        }
        Integer numA = c92Var.a(c92Var2);
        if (numA != null) {
            return numA;
        }
        Integer numA2 = c92Var2.a(c92Var);
        if (numA2 != null) {
            return Integer.valueOf(-numA2.intValue());
        }
        return null;
    }

    public static eu1 e(to8 to8Var, eu1 eu1Var, xt1 xt1Var, boolean z) {
        eu1 eu1VarE;
        if (eu1Var == null) {
            a(8);
        }
        if (xt1Var == null) {
            a(9);
        }
        for (eu1 eu1Var2 = (eu1) eu1Var.a(); eu1Var2 != null && eu1Var2.getVisibility() != f; eu1Var2 = (eu1) y82.q(eu1Var2, eu1.class)) {
            if (!eu1Var2.getVisibility().e(to8Var, eu1Var2, xt1Var, z)) {
                return eu1Var2;
            }
        }
        if (!(eu1Var instanceof dbb) || (eu1VarE = e(to8Var, ((dbb) eu1Var).B(), xt1Var, z)) == null) {
            return null;
        }
        return eu1VarE;
    }

    public static boolean f(xt1 xt1Var, xt1 xt1Var2) {
        if (xt1Var == null) {
            a(6);
        }
        if (xt1Var2 == null) {
            a(7);
        }
        zt9 zt9VarJ = y82.j(xt1Var2);
        if (zt9VarJ != zt9.a) {
            return zt9VarJ.equals(y82.j(xt1Var));
        }
        return false;
    }

    public static boolean g(c92 c92Var) {
        if (c92Var == null) {
            a(14);
        }
        return c92Var == a || c92Var == b;
    }

    public static boolean h(eu1 eu1Var, xt1 xt1Var, boolean z) {
        if (eu1Var == null) {
            a(2);
        }
        if (xt1Var == null) {
            a(3);
        }
        return e(n, eu1Var, xt1Var, z) == null;
    }

    public static void i(c92 c92Var) {
        q.put(c92Var.b(), c92Var);
    }

    public static c92 j(tfc tfcVar) {
        if (tfcVar == null) {
            a(15);
        }
        c92 c92Var = (c92) q.get(tfcVar);
        if (c92Var != null) {
            return c92Var;
        }
        throw new IllegalArgumentException("Inapplicable visibility: " + tfcVar);
    }
}

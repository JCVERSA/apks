package defpackage;

import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

public final class m85 {
    public static final m85 a;
    public static final String b;
    public static final String c;
    public static final String d;
    public static final String e;
    public static final xw0 f;
    public static final o54 g;
    public static final xw0 h;
    public static final xw0 i;
    public static final xw0 j;
    public static final HashMap k;
    public static final HashMap l;
    public static final HashMap m;
    public static final HashMap n;
    public static final HashMap o;
    public static final HashMap p;
    public static final List q;

    public static final class a {
        public final xw0 a;
        public final xw0 b;
        public final xw0 c;

        public a(xw0 xw0Var, xw0 xw0Var2, xw0 xw0Var3) {
            y45.j(xw0Var, "javaClass");
            y45.j(xw0Var2, "kotlinReadOnly");
            y45.j(xw0Var3, "kotlinMutable");
            this.a = xw0Var;
            this.b = xw0Var2;
            this.c = xw0Var3;
        }

        public final xw0 a() {
            return this.a;
        }

        public final xw0 b() {
            return this.b;
        }

        public final xw0 c() {
            return this.c;
        }

        public final xw0 d() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b) && y45.e(this.c, aVar.c);
        }

        public int hashCode() {
            return (((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
        }

        public String toString() {
            return "PlatformMutabilityMapping(javaClass=" + this.a + ", kotlinReadOnly=" + this.b + ", kotlinMutable=" + this.c + ')';
        }
    }

    static {
        m85 m85Var = new m85();
        a = m85Var;
        StringBuilder sb = new StringBuilder();
        FunctionClassKind functionClassKind = FunctionClassKind.Function;
        sb.append(functionClassKind.getPackageFqName().toString());
        sb.append('.');
        sb.append(functionClassKind.getClassNamePrefix());
        b = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        FunctionClassKind functionClassKind2 = FunctionClassKind.KFunction;
        sb2.append(functionClassKind2.getPackageFqName().toString());
        sb2.append('.');
        sb2.append(functionClassKind2.getClassNamePrefix());
        c = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        FunctionClassKind functionClassKind3 = FunctionClassKind.SuspendFunction;
        sb3.append(functionClassKind3.getPackageFqName().toString());
        sb3.append('.');
        sb3.append(functionClassKind3.getClassNamePrefix());
        d = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        FunctionClassKind functionClassKind4 = FunctionClassKind.KSuspendFunction;
        sb4.append(functionClassKind4.getPackageFqName().toString());
        sb4.append('.');
        sb4.append(functionClassKind4.getClassNamePrefix());
        e = sb4.toString();
        xw0 xw0VarM = xw0.m(new o54("kotlin.jvm.functions.FunctionN"));
        y45.i(xw0VarM, "topLevel(FqName(\"kotlin.jvm.functions.FunctionN\"))");
        f = xw0VarM;
        o54 o54VarB = xw0VarM.b();
        y45.i(o54VarB, "FUNCTION_N_CLASS_ID.asSingleFqName()");
        g = o54VarB;
        cw9 cw9Var = cw9.a;
        h = cw9Var.k();
        i = cw9Var.j();
        j = m85Var.g(Class.class);
        k = new HashMap();
        l = new HashMap();
        m = new HashMap();
        n = new HashMap();
        o = new HashMap();
        p = new HashMap();
        xw0 xw0VarM2 = xw0.m(e.a.U);
        y45.i(xw0VarM2, "topLevel(FqNames.iterable)");
        o54 o54Var = e.a.c0;
        o54 o54VarH = xw0VarM2.h();
        o54 o54VarH2 = xw0VarM2.h();
        y45.i(o54VarH2, "kotlinReadOnly.packageFqName");
        o54 o54VarG = kotlin.reflect.jvm.internal.impl.name.a.g(o54Var, o54VarH2);
        a aVar = new a(m85Var.g(Iterable.class), xw0VarM2, new xw0(o54VarH, o54VarG, false));
        xw0 xw0VarM3 = xw0.m(e.a.T);
        y45.i(xw0VarM3, "topLevel(FqNames.iterator)");
        o54 o54Var2 = e.a.b0;
        o54 o54VarH3 = xw0VarM3.h();
        o54 o54VarH4 = xw0VarM3.h();
        y45.i(o54VarH4, "kotlinReadOnly.packageFqName");
        a aVar2 = new a(m85Var.g(Iterator.class), xw0VarM3, new xw0(o54VarH3, kotlin.reflect.jvm.internal.impl.name.a.g(o54Var2, o54VarH4), false));
        xw0 xw0VarM4 = xw0.m(e.a.V);
        y45.i(xw0VarM4, "topLevel(FqNames.collection)");
        o54 o54Var3 = e.a.d0;
        o54 o54VarH5 = xw0VarM4.h();
        o54 o54VarH6 = xw0VarM4.h();
        y45.i(o54VarH6, "kotlinReadOnly.packageFqName");
        a aVar3 = new a(m85Var.g(Collection.class), xw0VarM4, new xw0(o54VarH5, kotlin.reflect.jvm.internal.impl.name.a.g(o54Var3, o54VarH6), false));
        xw0 xw0VarM5 = xw0.m(e.a.W);
        y45.i(xw0VarM5, "topLevel(FqNames.list)");
        o54 o54Var4 = e.a.e0;
        o54 o54VarH7 = xw0VarM5.h();
        o54 o54VarH8 = xw0VarM5.h();
        y45.i(o54VarH8, "kotlinReadOnly.packageFqName");
        a aVar4 = new a(m85Var.g(List.class), xw0VarM5, new xw0(o54VarH7, kotlin.reflect.jvm.internal.impl.name.a.g(o54Var4, o54VarH8), false));
        xw0 xw0VarM6 = xw0.m(e.a.Y);
        y45.i(xw0VarM6, "topLevel(FqNames.set)");
        o54 o54Var5 = e.a.g0;
        o54 o54VarH9 = xw0VarM6.h();
        o54 o54VarH10 = xw0VarM6.h();
        y45.i(o54VarH10, "kotlinReadOnly.packageFqName");
        a aVar5 = new a(m85Var.g(Set.class), xw0VarM6, new xw0(o54VarH9, kotlin.reflect.jvm.internal.impl.name.a.g(o54Var5, o54VarH10), false));
        xw0 xw0VarM7 = xw0.m(e.a.X);
        y45.i(xw0VarM7, "topLevel(FqNames.listIterator)");
        o54 o54Var6 = e.a.f0;
        o54 o54VarH11 = xw0VarM7.h();
        o54 o54VarH12 = xw0VarM7.h();
        y45.i(o54VarH12, "kotlinReadOnly.packageFqName");
        a aVar6 = new a(m85Var.g(ListIterator.class), xw0VarM7, new xw0(o54VarH11, kotlin.reflect.jvm.internal.impl.name.a.g(o54Var6, o54VarH12), false));
        o54 o54Var7 = e.a.Z;
        xw0 xw0VarM8 = xw0.m(o54Var7);
        y45.i(xw0VarM8, "topLevel(FqNames.map)");
        o54 o54Var8 = e.a.h0;
        o54 o54VarH13 = xw0VarM8.h();
        o54 o54VarH14 = xw0VarM8.h();
        y45.i(o54VarH14, "kotlinReadOnly.packageFqName");
        a aVar7 = new a(m85Var.g(Map.class), xw0VarM8, new xw0(o54VarH13, kotlin.reflect.jvm.internal.impl.name.a.g(o54Var8, o54VarH14), false));
        xw0 xw0VarD = xw0.m(o54Var7).d(e.a.a0.g());
        y45.i(xw0VarD, "topLevel(FqNames.map).cr…mes.mapEntry.shortName())");
        o54 o54Var9 = e.a.i0;
        o54 o54VarH15 = xw0VarD.h();
        o54 o54VarH16 = xw0VarD.h();
        y45.i(o54VarH16, "kotlinReadOnly.packageFqName");
        List listN = y71.n(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, new a(m85Var.g(Map.Entry.class), xw0VarD, new xw0(o54VarH15, kotlin.reflect.jvm.internal.impl.name.a.g(o54Var9, o54VarH16), false)));
        q = listN;
        m85Var.f(Object.class, e.a.b);
        m85Var.f(String.class, e.a.h);
        m85Var.f(CharSequence.class, e.a.g);
        m85Var.e(Throwable.class, e.a.u);
        m85Var.f(Cloneable.class, e.a.d);
        m85Var.f(Number.class, e.a.r);
        m85Var.e(Comparable.class, e.a.v);
        m85Var.f(Enum.class, e.a.s);
        m85Var.e(Annotation.class, e.a.G);
        Iterator it = listN.iterator();
        while (it.hasNext()) {
            a.d((a) it.next());
        }
        for (JvmPrimitiveType jvmPrimitiveType : JvmPrimitiveType.values()) {
            m85 m85Var2 = a;
            xw0 xw0VarM9 = xw0.m(jvmPrimitiveType.getWrapperFqName());
            y45.i(xw0VarM9, "topLevel(jvmType.wrapperFqName)");
            PrimitiveType primitiveType = jvmPrimitiveType.getPrimitiveType();
            y45.i(primitiveType, "jvmType.primitiveType");
            xw0 xw0VarM10 = xw0.m(e.c(primitiveType));
            y45.i(xw0VarM10, "topLevel(StandardNames.g…e(jvmType.primitiveType))");
            m85Var2.a(xw0VarM9, xw0VarM10);
        }
        for (xw0 xw0Var : kotlin.reflect.jvm.internal.impl.builtins.a.a.a()) {
            m85 m85Var3 = a;
            xw0 xw0VarM11 = xw0.m(new o54("kotlin.jvm.internal." + xw0Var.j().b() + "CompanionObject"));
            y45.i(xw0VarM11, "topLevel(FqName(\"kotlin.…g() + \"CompanionObject\"))");
            xw0 xw0VarD2 = xw0Var.d(su9.d);
            y45.i(xw0VarD2, "classId.createNestedClas…AME_FOR_COMPANION_OBJECT)");
            m85Var3.a(xw0VarM11, xw0VarD2);
        }
        for (int i2 = 0; i2 < 23; i2++) {
            m85 m85Var4 = a;
            xw0 xw0VarM12 = xw0.m(new o54("kotlin.jvm.functions.Function" + i2));
            y45.i(xw0VarM12, "topLevel(FqName(\"kotlin.…m.functions.Function$i\"))");
            m85Var4.a(xw0VarM12, e.a(i2));
            m85Var4.c(new o54(c + i2), h);
        }
        for (int i3 = 0; i3 < 22; i3++) {
            FunctionClassKind functionClassKind5 = FunctionClassKind.KSuspendFunction;
            a.c(new o54((functionClassKind5.getPackageFqName().toString() + '.' + functionClassKind5.getClassNamePrefix()) + i3), h);
        }
        m85 m85Var5 = a;
        o54 o54VarL = e.a.c.l();
        y45.i(o54VarL, "nothing.toSafe()");
        m85Var5.c(o54VarL, m85Var5.g(Void.class));
    }

    public final void a(xw0 xw0Var, xw0 xw0Var2) {
        b(xw0Var, xw0Var2);
        o54 o54VarB = xw0Var2.b();
        y45.i(o54VarB, "kotlinClassId.asSingleFqName()");
        c(o54VarB, xw0Var);
    }

    public final void b(xw0 xw0Var, xw0 xw0Var2) {
        HashMap map = k;
        p54 p54VarJ = xw0Var.b().j();
        y45.i(p54VarJ, "javaClassId.asSingleFqName().toUnsafe()");
        map.put(p54VarJ, xw0Var2);
    }

    public final void c(o54 o54Var, xw0 xw0Var) {
        HashMap map = l;
        p54 p54VarJ = o54Var.j();
        y45.i(p54VarJ, "kotlinFqNameUnsafe.toUnsafe()");
        map.put(p54VarJ, xw0Var);
    }

    public final void d(a aVar) {
        xw0 xw0VarA = aVar.a();
        xw0 xw0VarB = aVar.b();
        xw0 xw0VarC = aVar.c();
        a(xw0VarA, xw0VarB);
        o54 o54VarB = xw0VarC.b();
        y45.i(o54VarB, "mutableClassId.asSingleFqName()");
        c(o54VarB, xw0VarA);
        o.put(xw0VarC, xw0VarB);
        p.put(xw0VarB, xw0VarC);
        o54 o54VarB2 = xw0VarB.b();
        y45.i(o54VarB2, "readOnlyClassId.asSingleFqName()");
        o54 o54VarB3 = xw0VarC.b();
        y45.i(o54VarB3, "mutableClassId.asSingleFqName()");
        HashMap map = m;
        p54 p54VarJ = xw0VarC.b().j();
        y45.i(p54VarJ, "mutableClassId.asSingleFqName().toUnsafe()");
        map.put(p54VarJ, o54VarB2);
        HashMap map2 = n;
        p54 p54VarJ2 = o54VarB2.j();
        y45.i(p54VarJ2, "readOnlyFqName.toUnsafe()");
        map2.put(p54VarJ2, o54VarB3);
    }

    public final void e(Class cls, o54 o54Var) {
        xw0 xw0VarG = g(cls);
        xw0 xw0VarM = xw0.m(o54Var);
        y45.i(xw0VarM, "topLevel(kotlinFqName)");
        a(xw0VarG, xw0VarM);
    }

    public final void f(Class cls, p54 p54Var) {
        o54 o54VarL = p54Var.l();
        y45.i(o54VarL, "kotlinFqName.toSafe()");
        e(cls, o54VarL);
    }

    public final xw0 g(Class cls) {
        if (!cls.isPrimitive()) {
            cls.isArray();
        }
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            xw0 xw0VarM = xw0.m(new o54(cls.getCanonicalName()));
            y45.i(xw0VarM, "topLevel(FqName(clazz.canonicalName))");
            return xw0VarM;
        }
        xw0 xw0VarD = g(declaringClass).d(by6.g(cls.getSimpleName()));
        y45.i(xw0VarD, "classId(outer).createNes…tifier(clazz.simpleName))");
        return xw0VarD;
    }

    public final o54 h() {
        return g;
    }

    public final List i() {
        return q;
    }

    public final boolean j(p54 p54Var, String str) {
        Integer numR;
        String strB = p54Var.b();
        y45.i(strB, "kotlinFqName.asString()");
        String strV0 = j1a.V0(strB, str, "");
        return strV0.length() > 0 && !j1a.R0(strV0, '0', false, 2, null) && (numR = f1a.r(strV0)) != null && numR.intValue() >= 23;
    }

    public final boolean k(p54 p54Var) {
        return m.containsKey(p54Var);
    }

    public final boolean l(p54 p54Var) {
        return n.containsKey(p54Var);
    }

    public final xw0 m(o54 o54Var) {
        y45.j(o54Var, "fqName");
        return (xw0) k.get(o54Var.j());
    }

    public final xw0 n(p54 p54Var) {
        y45.j(p54Var, "kotlinFqName");
        if (!j(p54Var, b) && !j(p54Var, d)) {
            if (!j(p54Var, c) && !j(p54Var, e)) {
                return (xw0) l.get(p54Var);
            }
            return h;
        }
        return f;
    }

    public final o54 o(p54 p54Var) {
        return (o54) m.get(p54Var);
    }

    public final o54 p(p54 p54Var) {
        return (o54) n.get(p54Var);
    }
}

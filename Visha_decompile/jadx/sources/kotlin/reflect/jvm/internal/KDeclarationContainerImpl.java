package kotlin.reflect.jvm.internal;

import defpackage.af5;
import defpackage.b92;
import defpackage.by6;
import defpackage.c26;
import defpackage.c74;
import defpackage.c92;
import defpackage.clb;
import defpackage.e74;
import defpackage.el1;
import defpackage.g1a;
import defpackage.i81;
import defpackage.j1a;
import defpackage.kw0;
import defpackage.ky5;
import defpackage.lq6;
import defpackage.s74;
import defpackage.ti8;
import defpackage.tw8;
import defpackage.xp8;
import defpackage.xq8;
import defpackage.xt1;
import defpackage.y45;
import defpackage.zfb;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.text.Regex;
import org.apache.commons.io.IOUtils;

public abstract class KDeclarationContainerImpl implements kw0 {
    public static final a b = new a(null);
    public static final Class c = DefaultConstructorMarker.class;
    public static final Regex d = new Regex("<v#(\\d+)>");

    public abstract class Data {
        public static final af5[] c = {xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "moduleData", "getModuleData()Lorg/jetbrains/kotlin/descriptors/runtime/components/RuntimeModuleData;"))};
        public final e.a a;

        public Data() {
            this.a = e.c(new c74() {
                {
                    super(0);
                }

                @Override
                public final tw8 invoke() {
                    return lq6.a(kDeclarationContainerImpl.d());
                }
            });
        }

        public final tw8 a() {
            Object objB = this.a.b(this, c[0]);
            y45.i(objB, "<get-moduleData>(...)");
            return (tw8) objB;
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0084\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lkotlin/reflect/jvm/internal/KDeclarationContainerImpl$MemberBelonginess;", "", "(Ljava/lang/String;I)V", "accept", "", "member", "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;", "DECLARED", "INHERITED", "kotlin-reflection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public enum MemberBelonginess {
        DECLARED,
        INHERITED;

        public final boolean accept(CallableMemberDescriptor member) {
            y45.j(member, "member");
            return member.getKind().isReal() == (this == DECLARED);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Regex a() {
            return KDeclarationContainerImpl.d;
        }

        public a() {
        }
    }

    public static final class b extends el1 {
        public b(KDeclarationContainerImpl kDeclarationContainerImpl) {
            super(kDeclarationContainerImpl);
        }

        @Override
        public KCallableImpl d(kotlin.reflect.jvm.internal.impl.descriptors.c cVar, zfb zfbVar) {
            y45.j(cVar, "descriptor");
            y45.j(zfbVar, "data");
            throw new IllegalStateException("No constructors should appear here: " + cVar);
        }
    }

    public static final int y(s74 s74Var, Object obj, Object obj2) {
        y45.j(s74Var, "$tmp0");
        return ((Number) s74Var.invoke(obj, obj2)).intValue();
    }

    public abstract Collection A(by6 by6Var);

    public abstract ti8 B(int i);

    /* JADX WARN: Code duplicated, block: B:12:0x004e  */
    public final Collection C(MemberScope memberScope, MemberBelonginess memberBelonginess) {
        KCallableImpl kCallableImpl;
        y45.j(memberScope, "scope");
        y45.j(memberBelonginess, "belonginess");
        b bVar = new b(this);
        Collection<xt1> collectionA = kotlin.reflect.jvm.internal.impl.resolve.scopes.c.a.a(memberScope, null, null, 3, null);
        ArrayList arrayList = new ArrayList();
        for (xt1 xt1Var : collectionA) {
            if (xt1Var instanceof CallableMemberDescriptor) {
                CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) xt1Var;
                if (y45.e(callableMemberDescriptor.getVisibility(), b92.h) || !memberBelonginess.accept(callableMemberDescriptor)) {
                    kCallableImpl = null;
                } else {
                    kCallableImpl = (KCallableImpl) xt1Var.q0(bVar, zfb.a);
                }
            } else {
                kCallableImpl = null;
            }
            if (kCallableImpl != null) {
                arrayList.add(kCallableImpl);
            }
        }
        return i81.b1(arrayList);
    }

    public Class D() {
        Class clsG = ReflectClassUtilKt.g(d());
        return clsG == null ? d() : clsG;
    }

    public abstract Collection E(by6 by6Var);

    public final List F(String str) {
        int iL0;
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (str.charAt(i) != ')') {
            int i2 = i;
            while (str.charAt(i2) == '[') {
                i2++;
            }
            char cCharAt = str.charAt(i2);
            if (j1a.W("VZCBSIFJD", cCharAt, false, 2, null)) {
                iL0 = i2 + 1;
            } else {
                if (cCharAt != 'L') {
                    throw new KotlinReflectionInternalError("Unknown type prefix in the method signature: " + str);
                }
                iL0 = j1a.l0(str, ';', i, false, 4, null) + 1;
            }
            arrayList.add(I(str, i, iL0));
            i = iL0;
        }
        return arrayList;
    }

    public final Class G(String str) {
        return I(str, j1a.l0(str, ')', 0, false, 6, null) + 1, str.length());
    }

    public final Method H(Class cls, String str, Class[] clsArr, Class cls2, boolean z) {
        Method methodH;
        if (z) {
            clsArr[0] = cls;
        }
        Method methodK = K(cls, str, clsArr, cls2);
        if (methodK != null) {
            return methodK;
        }
        Class superclass = cls.getSuperclass();
        if (superclass != null && (methodH = H(superclass, str, clsArr, cls2, z)) != null) {
            return methodH;
        }
        Class<?>[] interfaces = cls.getInterfaces();
        y45.i(interfaces, "interfaces");
        for (Class<?> cls3 : interfaces) {
            y45.i(cls3, "superInterface");
            Method methodH2 = H(cls3, str, clsArr, cls2, z);
            if (methodH2 != null) {
                return methodH2;
            }
            if (z) {
                Class clsA = xp8.a(ReflectClassUtilKt.f(cls3), cls3.getName() + "$DefaultImpls");
                if (clsA != null) {
                    clsArr[0] = cls3;
                    Method methodK2 = K(clsA, str, clsArr, cls2);
                    if (methodK2 != null) {
                        return methodK2;
                    }
                } else {
                    continue;
                }
            }
        }
        return null;
    }

    public final Class I(String str, int i, int i2) throws ClassNotFoundException {
        char cCharAt = str.charAt(i);
        if (cCharAt == 'L') {
            ClassLoader classLoaderF = ReflectClassUtilKt.f(d());
            String strSubstring = str.substring(i + 1, i2 - 1);
            y45.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            Class<?> clsLoadClass = classLoaderF.loadClass(g1a.M(strSubstring, IOUtils.DIR_SEPARATOR_UNIX, '.', false, 4, null));
            y45.i(clsLoadClass, "jClass.safeClassLoader.l…d - 1).replace('/', '.'))");
            return clsLoadClass;
        }
        if (cCharAt == '[') {
            return clb.f(I(str, i + 1, i2));
        }
        if (cCharAt == 'V') {
            Class cls = Void.TYPE;
            y45.i(cls, "TYPE");
            return cls;
        }
        if (cCharAt == 'Z') {
            return Boolean.TYPE;
        }
        if (cCharAt == 'C') {
            return Character.TYPE;
        }
        if (cCharAt == 'B') {
            return Byte.TYPE;
        }
        if (cCharAt == 'S') {
            return Short.TYPE;
        }
        if (cCharAt == 'I') {
            return Integer.TYPE;
        }
        if (cCharAt == 'F') {
            return Float.TYPE;
        }
        if (cCharAt == 'J') {
            return Long.TYPE;
        }
        if (cCharAt == 'D') {
            return Double.TYPE;
        }
        throw new KotlinReflectionInternalError("Unknown type prefix in the method signature: " + str);
    }

    public final Constructor J(Class cls, List list) {
        try {
            Class[] clsArr = (Class[]) list.toArray(new Class[0]);
            return cls.getDeclaredConstructor((Class[]) Arrays.copyOf(clsArr, clsArr.length));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public final Method K(Class cls, String str, Class[] clsArr, Class cls2) {
        try {
            Method declaredMethod = cls.getDeclaredMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
            if (y45.e(declaredMethod.getReturnType(), cls2)) {
                return declaredMethod;
            }
            Method[] declaredMethods = cls.getDeclaredMethods();
            y45.i(declaredMethods, "declaredMethods");
            for (Method method : declaredMethods) {
                if (y45.e(method.getName(), str) && y45.e(method.getReturnType(), cls2) && Arrays.equals(method.getParameterTypes(), clsArr)) {
                    return method;
                }
            }
            return null;
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    public final void q(List list, String str, boolean z) {
        List listF = F(str);
        list.addAll(listF);
        int size = (listF.size() + 31) / 32;
        for (int i = 0; i < size; i++) {
            Class cls = Integer.TYPE;
            y45.i(cls, "TYPE");
            list.add(cls);
        }
        if (!z) {
            list.add(Object.class);
            return;
        }
        Class cls2 = c;
        list.remove(cls2);
        y45.i(cls2, "DEFAULT_CONSTRUCTOR_MARKER");
        list.add(cls2);
    }

    public final Constructor r(String str) {
        y45.j(str, "desc");
        return J(d(), F(str));
    }

    public final Constructor t(String str) {
        y45.j(str, "desc");
        Class clsD = d();
        ArrayList arrayList = new ArrayList();
        q(arrayList, str, true);
        zfb zfbVar = zfb.a;
        return J(clsD, arrayList);
    }

    public final Method u(String str, String str2, boolean z) {
        y45.j(str, "name");
        y45.j(str2, "desc");
        if (y45.e(str, MethodDecl.initName)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (z) {
            arrayList.add(d());
        }
        q(arrayList, str2, false);
        return H(D(), str + "$default", (Class[]) arrayList.toArray(new Class[0]), G(str2), z);
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.e v(String str, String str2) {
        List listA;
        y45.j(str, "name");
        y45.j(str2, "signature");
        if (y45.e(str, MethodDecl.initName)) {
            listA = i81.b1(z());
        } else {
            by6 by6VarG = by6.g(str);
            y45.i(by6VarG, "identifier(name)");
            listA = A(by6VarG);
        }
        Collection collection = listA;
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (y45.e(f.a.g((kotlin.reflect.jvm.internal.impl.descriptors.e) obj).a(), str2)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.size() == 1) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.e) i81.O0(arrayList);
        }
        String strY0 = i81.y0(collection, "\n", null, null, 0, null, new e74() {
            @Override
            public final CharSequence invoke(kotlin.reflect.jvm.internal.impl.descriptors.e eVar) {
                y45.j(eVar, "descriptor");
                return DescriptorRenderer.j.s(eVar) + " | " + f.a.g(eVar).a();
            }
        }, 30, null);
        StringBuilder sb = new StringBuilder();
        sb.append("Function '");
        sb.append(str);
        sb.append("' (JVM signature: ");
        sb.append(str2);
        sb.append(") not resolved in ");
        sb.append(this);
        sb.append(':');
        sb.append(strY0.length() == 0 ? " no members found" : '\n' + strY0);
        throw new KotlinReflectionInternalError(sb.toString());
    }

    public final Method w(String str, String str2) {
        Method methodH;
        y45.j(str, "name");
        y45.j(str2, "desc");
        if (y45.e(str, MethodDecl.initName)) {
            return null;
        }
        Class[] clsArr = (Class[]) F(str2).toArray(new Class[0]);
        Class clsG = G(str2);
        Method methodH2 = H(D(), str, clsArr, clsG, false);
        if (methodH2 != null) {
            return methodH2;
        }
        if (!D().isInterface() || (methodH = H(Object.class, str, clsArr, clsG, false)) == null) {
            return null;
        }
        return methodH;
    }

    public final ti8 x(String str, String str2) {
        y45.j(str, "name");
        y45.j(str2, "signature");
        c26 c26VarMatchEntire = d.matchEntire(str2);
        if (c26VarMatchEntire != null) {
            String str3 = (String) c26VarMatchEntire.a().a().b().get(1);
            ti8 ti8VarB = B(Integer.parseInt(str3));
            if (ti8VarB != null) {
                return ti8VarB;
            }
            throw new KotlinReflectionInternalError("Local property #" + str3 + " not found in " + d());
        }
        by6 by6VarG = by6.g(str);
        y45.i(by6VarG, "identifier(name)");
        Collection collectionE = E(by6VarG);
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionE) {
            if (y45.e(f.a.f((ti8) obj).a(), str2)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            throw new KotlinReflectionInternalError("Property '" + str + "' (JVM signature: " + str2 + ") not resolved in " + this);
        }
        if (arrayList.size() == 1) {
            return (ti8) i81.O0(arrayList);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj2 : arrayList) {
            c92 visibility = ((ti8) obj2).getVisibility();
            Object arrayList2 = linkedHashMap.get(visibility);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(visibility, arrayList2);
            }
            ((List) arrayList2).add(obj2);
        }
        final KDeclarationContainerImpl$findPropertyDescriptor$mostVisibleProperties$2 kDeclarationContainerImpl$findPropertyDescriptor$mostVisibleProperties$2 = new s74() {
            @Override
            public final Integer invoke(c92 c92Var, c92 c92Var2) {
                Integer numD = b92.d(c92Var, c92Var2);
                return Integer.valueOf(numD == null ? 0 : numD.intValue());
            }
        };
        Collection collectionValues = ky5.k(linkedHashMap, new Comparator(kDeclarationContainerImpl$findPropertyDescriptor$mostVisibleProperties$2) {
            private final s74 arg$0;

            {
                this.arg$0 = kDeclarationContainerImpl$findPropertyDescriptor$mostVisibleProperties$2;
            }

            @Override
            public int compare(Object obj3, Object obj4) {
                return KDeclarationContainerImpl.y(this.arg$0, obj3, obj4);
            }
        }).values();
        y45.i(collectionValues, "properties\n             …\n                }.values");
        List list = (List) i81.z0(collectionValues);
        if (list.size() == 1) {
            y45.i(list, "mostVisibleProperties");
            return (ti8) i81.o0(list);
        }
        by6 by6VarG2 = by6.g(str);
        y45.i(by6VarG2, "identifier(name)");
        String strY0 = i81.y0(E(by6VarG2), "\n", null, null, 0, null, new e74() {
            @Override
            public final CharSequence invoke(ti8 ti8Var) {
                y45.j(ti8Var, "descriptor");
                return DescriptorRenderer.j.s(ti8Var) + " | " + f.a.f(ti8Var).a();
            }
        }, 30, null);
        StringBuilder sb = new StringBuilder();
        sb.append("Property '");
        sb.append(str);
        sb.append("' (JVM signature: ");
        sb.append(str2);
        sb.append(") not resolved in ");
        sb.append(this);
        sb.append(':');
        sb.append(strY0.length() == 0 ? " no members found" : '\n' + strY0);
        throw new KotlinReflectionInternalError(sb.toString());
    }

    public abstract Collection z();
}

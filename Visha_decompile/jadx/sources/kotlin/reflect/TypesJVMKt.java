package kotlin.reflect;

import defpackage.adb;
import defpackage.de5;
import defpackage.ed5;
import defpackage.ff5;
import defpackage.g1a;
import defpackage.gf5;
import defpackage.he5;
import defpackage.hf5;
import defpackage.i81;
import defpackage.jf5;
import defpackage.pc9;
import defpackage.qd4;
import defpackage.y45;
import defpackage.z71;
import defpackage.zc9;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.sequences.SequencesKt___SequencesKt;
import okhttp3.HttpUrl;

public abstract class TypesJVMKt {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[KVariance.values().length];
            try {
                iArr[KVariance.IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KVariance.INVARIANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KVariance.OUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final Type c(ff5 ff5Var, boolean z) {
        he5 he5VarJ = ff5Var.j();
        if (he5VarJ instanceof hf5) {
            return new adb((hf5) he5VarJ);
        }
        if (!(he5VarJ instanceof de5)) {
            throw new UnsupportedOperationException("Unsupported type classifier: " + ff5Var);
        }
        de5 de5Var = (de5) he5VarJ;
        Class clsC = z ? ed5.c(de5Var) : ed5.b(de5Var);
        List listL = ff5Var.l();
        if (listL.isEmpty()) {
            return clsC;
        }
        if (!clsC.isArray()) {
            return e(clsC, listL);
        }
        if (clsC.getComponentType().isPrimitive()) {
            return clsC;
        }
        jf5 jf5Var = (jf5) i81.Q0(listL);
        if (jf5Var == null) {
            throw new IllegalArgumentException("kotlin.Array must have exactly one type argument: " + ff5Var);
        }
        KVariance kVarianceA = jf5Var.a();
        ff5 ff5VarB = jf5Var.b();
        int i = kVarianceA == null ? -1 : a.a[kVarianceA.ordinal()];
        if (i == -1 || i == 1) {
            return clsC;
        }
        if (i != 2 && i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        y45.g(ff5VarB);
        Type typeD = d(ff5VarB, false, 1, null);
        return typeD instanceof Class ? clsC : new qd4(typeD);
    }

    public static Type d(ff5 ff5Var, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return c(ff5Var, z);
    }

    public static final Type e(Class cls, List list) {
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            List list2 = list;
            ArrayList arrayList = new ArrayList(z71.v(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(g((jf5) it.next()));
            }
            return new ParameterizedTypeImpl(cls, null, arrayList);
        }
        if (Modifier.isStatic(cls.getModifiers())) {
            List list3 = list;
            ArrayList arrayList2 = new ArrayList(z71.v(list3, 10));
            Iterator it2 = list3.iterator();
            while (it2.hasNext()) {
                arrayList2.add(g((jf5) it2.next()));
            }
            return new ParameterizedTypeImpl(cls, declaringClass, arrayList2);
        }
        int length = cls.getTypeParameters().length;
        Type typeE = e(declaringClass, list.subList(length, list.size()));
        List listSubList = list.subList(0, length);
        ArrayList arrayList3 = new ArrayList(z71.v(listSubList, 10));
        Iterator it3 = listSubList.iterator();
        while (it3.hasNext()) {
            arrayList3.add(g((jf5) it3.next()));
        }
        return new ParameterizedTypeImpl(cls, typeE, arrayList3);
    }

    public static final Type f(ff5 ff5Var) {
        Type typeA;
        y45.j(ff5Var, "<this>");
        return (!(ff5Var instanceof gf5) || (typeA = ((gf5) ff5Var).a()) == null) ? d(ff5Var, false, 1, null) : typeA;
    }

    public static final Type g(jf5 jf5Var) {
        KVariance kVarianceD = jf5Var.d();
        if (kVarianceD == null) {
            return kotlin.reflect.a.d.a();
        }
        ff5 ff5VarC = jf5Var.c();
        y45.g(ff5VarC);
        int i = a.a[kVarianceD.ordinal()];
        if (i == 1) {
            return new kotlin.reflect.a(null, c(ff5VarC, true));
        }
        if (i == 2) {
            return c(ff5VarC, true);
        }
        if (i == 3) {
            return new kotlin.reflect.a(c(ff5VarC, true), null);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final String h(Type type) {
        if (!(type instanceof Class)) {
            return type.toString();
        }
        Class cls = (Class) type;
        if (!cls.isArray()) {
            String name = cls.getName();
            y45.i(name, "getName(...)");
            return name;
        }
        pc9 pc9VarP = zc9.p(type, TypesJVMKt$typeToString$unwrap$1.INSTANCE);
        return ((Class) SequencesKt___SequencesKt.Q(pc9VarP)).getName() + g1a.J(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, SequencesKt___SequencesKt.A(pc9VarP));
    }
}

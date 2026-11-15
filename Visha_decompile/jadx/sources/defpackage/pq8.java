package defpackage;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import kotlin.reflect.TypesJVMKt;
import kotlin.reflect.jvm.internal.KCallableImpl;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.KTypeImpl;
import kotlin.reflect.jvm.internal.calls.a;

public abstract class pq8 {
    public static final Constructor a(le5 le5Var) {
        a aVarX;
        y45.j(le5Var, "<this>");
        KCallableImpl kCallableImplB = clb.b(le5Var);
        Member memberB = (kCallableImplB == null || (aVarX = kCallableImplB.x()) == null) ? null : aVarX.b();
        if (memberB instanceof Constructor) {
            return (Constructor) memberB;
        }
        return null;
    }

    public static final Field b(af5 af5Var) {
        y45.j(af5Var, "<this>");
        KPropertyImpl kPropertyImplD = clb.d(af5Var);
        if (kPropertyImplD != null) {
            return kPropertyImplD.I();
        }
        return null;
    }

    public static final Method c(af5 af5Var) {
        y45.j(af5Var, "<this>");
        return d(af5Var.getGetter());
    }

    public static final Method d(le5 le5Var) {
        a aVarX;
        y45.j(le5Var, "<this>");
        KCallableImpl kCallableImplB = clb.b(le5Var);
        Member memberB = (kCallableImplB == null || (aVarX = kCallableImplB.x()) == null) ? null : aVarX.b();
        if (memberB instanceof Method) {
            return (Method) memberB;
        }
        return null;
    }

    public static final Method e(ve5 ve5Var) {
        y45.j(ve5Var, "<this>");
        return d(ve5Var.getSetter());
    }

    public static final Type f(ff5 ff5Var) {
        y45.j(ff5Var, "<this>");
        Type typeA = ((KTypeImpl) ff5Var).a();
        return typeA == null ? TypesJVMKt.f(ff5Var) : typeA;
    }
}

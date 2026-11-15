package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

public abstract class h05 {
    public static final o54 a;
    public static final xw0 b;

    static {
        o54 o54Var = new o54("kotlin.jvm.JvmInline");
        a = o54Var;
        xw0 xw0VarM = xw0.m(o54Var);
        y45.i(xw0VarM, "topLevel(JVM_INLINE_ANNOTATION_FQ_NAME)");
        b = xw0VarM;
    }

    public static final boolean a(a aVar) {
        y45.j(aVar, "<this>");
        if (aVar instanceof vi8) {
            ti8 ti8VarE0 = ((vi8) aVar).e0();
            y45.i(ti8VarE0, "correspondingProperty");
            if (e(ti8VarE0)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean b(xt1 xt1Var) {
        y45.j(xt1Var, "<this>");
        return (xt1Var instanceof qw0) && (((qw0) xt1Var).c0() instanceof g05);
    }

    public static final boolean c(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        px0 px0VarC = eh5Var.I0().c();
        if (px0VarC != null) {
            return b(px0VarC);
        }
        return false;
    }

    public static final boolean d(xt1 xt1Var) {
        y45.j(xt1Var, "<this>");
        return (xt1Var instanceof qw0) && (((qw0) xt1Var).c0() instanceof js6);
    }

    public static final boolean e(xnb xnbVar) {
        g05 g05VarN;
        y45.j(xnbVar, "<this>");
        if (xnbVar.b0() == null) {
            xt1 xt1VarB = xnbVar.b();
            by6 by6VarC = null;
            qw0 qw0Var = xt1VarB instanceof qw0 ? (qw0) xt1VarB : null;
            if (qw0Var != null && (g05VarN = DescriptorUtilsKt.n(qw0Var)) != null) {
                by6VarC = g05VarN.c();
            }
            if (y45.e(by6VarC, xnbVar.getName())) {
                return true;
            }
        }
        return false;
    }

    public static final boolean f(xt1 xt1Var) {
        y45.j(xt1Var, "<this>");
        return b(xt1Var) || d(xt1Var);
    }

    public static final eh5 g(eh5 eh5Var) {
        g05 g05VarN;
        y45.j(eh5Var, "<this>");
        px0 px0VarC = eh5Var.I0().c();
        qw0 qw0Var = px0VarC instanceof qw0 ? (qw0) px0VarC : null;
        if (qw0Var == null || (g05VarN = DescriptorUtilsKt.n(qw0Var)) == null) {
            return null;
        }
        return (sm9) g05VarN.d();
    }
}

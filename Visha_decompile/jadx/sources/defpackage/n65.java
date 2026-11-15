package defpackage;

import java.util.Map;
import kotlin.collections.a;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaDeprecatedAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaRetentionAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaTargetAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor;
import org.mozilla.javascript.ES6Iterator;

public final class n65 {
    public static final n65 a = new n65();
    public static final by6 b;
    public static final by6 c;
    public static final by6 d;
    public static final Map e;

    static {
        by6 by6VarG = by6.g("message");
        y45.i(by6VarG, "identifier(\"message\")");
        b = by6VarG;
        by6 by6VarG2 = by6.g("allowedTargets");
        y45.i(by6VarG2, "identifier(\"allowedTargets\")");
        c = by6VarG2;
        by6 by6VarG3 = by6.g(ES6Iterator.VALUE_PROPERTY);
        y45.i(by6VarG3, "identifier(\"value\")");
        d = by6VarG3;
        e = a.p(abb.a(e.a.H, yc5.d), abb.a(e.a.L, yc5.f), abb.a(e.a.P, yc5.i));
    }

    public static gd f(n65 n65Var, k65 k65Var, gj5 gj5Var, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return n65Var.e(k65Var, gj5Var, z);
    }

    public final gd a(o54 o54Var, o65 o65Var, gj5 gj5Var) {
        k65 k65VarA;
        y45.j(o54Var, "kotlinName");
        y45.j(o65Var, "annotationOwner");
        y45.j(gj5Var, "c");
        if (y45.e(o54Var, e.a.y)) {
            o54 o54Var2 = yc5.h;
            y45.i(o54Var2, "DEPRECATED_ANNOTATION");
            k65 k65VarA2 = o65Var.a(o54Var2);
            if (k65VarA2 != null || o65Var.x()) {
                return new JavaDeprecatedAnnotationDescriptor(k65VarA2, gj5Var);
            }
        }
        o54 o54Var3 = (o54) e.get(o54Var);
        if (o54Var3 == null || (k65VarA = o65Var.a(o54Var3)) == null) {
            return null;
        }
        return f(a, k65VarA, gj5Var, false, 4, null);
    }

    public final by6 b() {
        return b;
    }

    public final by6 c() {
        return d;
    }

    public final by6 d() {
        return c;
    }

    public final gd e(k65 k65Var, gj5 gj5Var, boolean z) {
        y45.j(k65Var, "annotation");
        y45.j(gj5Var, "c");
        xw0 xw0VarC = k65Var.c();
        if (y45.e(xw0VarC, xw0.m(yc5.d))) {
            return new JavaTargetAnnotationDescriptor(k65Var, gj5Var);
        }
        if (y45.e(xw0VarC, xw0.m(yc5.f))) {
            return new JavaRetentionAnnotationDescriptor(k65Var, gj5Var);
        }
        if (y45.e(xw0VarC, xw0.m(yc5.i))) {
            return new JavaAnnotationDescriptor(gj5Var, k65Var, e.a.P);
        }
        if (y45.e(xw0VarC, xw0.m(yc5.h))) {
            return null;
        }
        return new LazyJavaAnnotationDescriptor(gj5Var, k65Var, z);
    }
}

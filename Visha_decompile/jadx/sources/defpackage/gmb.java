package defpackage;

import java.util.Iterator;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState;
import kotlin.reflect.jvm.internal.impl.load.java.ReportLevel;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;

public abstract class gmb {
    public static final gd a(gj5 gj5Var, b95 b95Var) {
        Object next;
        y45.j(gj5Var, "c");
        y45.j(b95Var, "wildcardType");
        if (b95Var.s() == null) {
            throw new IllegalArgumentException("Nullability annotations on unbounded wildcards aren't supported");
        }
        Iterator it = new LazyJavaAnnotations(gj5Var, b95Var, false, 4, null).iterator();
        while (it.hasNext()) {
            next = it.next();
            gd gdVar = (gd) next;
            for (o54 o54Var : w75.f()) {
                if (y45.e(gdVar.d(), o54Var)) {
                    return (gd) next;
                }
            }
        }
        next = null;
        return (gd) next;
    }

    public static final boolean b(CallableMemberDescriptor callableMemberDescriptor) {
        y45.j(callableMemberDescriptor, "memberDescriptor");
        return (callableMemberDescriptor instanceof e) && y45.e(callableMemberDescriptor.K(JavaMethodDescriptor.I), Boolean.TRUE);
    }

    public static final boolean c(JavaTypeEnhancementState javaTypeEnhancementState) {
        y45.j(javaTypeEnhancementState, "javaTypeEnhancementState");
        return javaTypeEnhancementState.c().invoke(w75.e()) == ReportLevel.STRICT;
    }

    public static final c92 d(tfc tfcVar) {
        y45.j(tfcVar, "<this>");
        c92 c92VarG = j75.g(tfcVar);
        y45.i(c92VarG, "toDescriptorVisibility(this)");
        return c92VarG;
    }
}

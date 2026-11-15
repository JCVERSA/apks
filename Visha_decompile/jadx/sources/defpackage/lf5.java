package defpackage;

import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.KTypeImpl;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;

public abstract class lf5 {
    public static final de5 a(he5 he5Var) {
        Object obj;
        de5 de5VarB;
        y45.j(he5Var, "<this>");
        if (he5Var instanceof de5) {
            return (de5) he5Var;
        }
        if (!(he5Var instanceof hf5)) {
            throw new KotlinReflectionInternalError("Cannot calculate JVM erasure for type: " + he5Var);
        }
        List upperBounds = ((hf5) he5Var).getUpperBounds();
        Iterator it = upperBounds.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            ff5 ff5Var = (ff5) next;
            y45.h(ff5Var, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KTypeImpl");
            px0 px0VarC = ((KTypeImpl) ff5Var).h().I0().c();
            qw0 qw0Var = px0VarC instanceof qw0 ? (qw0) px0VarC : null;
            if (qw0Var != null && qw0Var.getKind() != ClassKind.INTERFACE && qw0Var.getKind() != ClassKind.ANNOTATION_CLASS) {
                obj = next;
                break;
            }
        }
        ff5 ff5Var2 = (ff5) obj;
        if (ff5Var2 == null) {
            ff5Var2 = (ff5) i81.q0(upperBounds);
        }
        return (ff5Var2 == null || (de5VarB = b(ff5Var2)) == null) ? xq8.b(Object.class) : de5VarB;
    }

    public static final de5 b(ff5 ff5Var) {
        de5 de5VarA;
        y45.j(ff5Var, "<this>");
        he5 he5VarJ = ff5Var.j();
        if (he5VarJ != null && (de5VarA = a(he5VarJ)) != null) {
            return de5VarA;
        }
        throw new KotlinReflectionInternalError("Cannot calculate JVM erasure for type: " + ff5Var);
    }
}

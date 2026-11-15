package defpackage;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.MutabilityQualifier;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.TypeComponentPosition;

public abstract class wbb {
    public static final md a;
    public static final va3 b;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[NullabilityQualifier.values().length];
            try {
                iArr[NullabilityQualifier.NULLABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NullabilityQualifier.NOT_NULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    static {
        o54 o54Var = yc5.u;
        y45.i(o54Var, "ENHANCED_NULLABILITY_ANNOTATION");
        a = new va3(o54Var);
        o54 o54Var2 = yc5.v;
        y45.i(o54Var2, "ENHANCED_MUTABILITY_ANNOTATION");
        b = new va3(o54Var2);
    }

    public static final md e(List list) {
        int size = list.size();
        if (size != 0) {
            return size != 1 ? new CompositeAnnotations(i81.b1(list)) : (md) i81.O0(list);
        }
        throw new IllegalStateException("At least one Annotations object expected");
    }

    public static final px0 f(px0 px0Var, kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a aVar, TypeComponentPosition typeComponentPosition) {
        n85 n85Var = n85.a;
        if (!rbb.a(typeComponentPosition) || !(px0Var instanceof qw0)) {
            return null;
        }
        if (aVar.c() == MutabilityQualifier.READ_ONLY && typeComponentPosition == TypeComponentPosition.FLEXIBLE_LOWER) {
            qw0 qw0Var = (qw0) px0Var;
            if (n85Var.c(qw0Var)) {
                return n85Var.a(qw0Var);
            }
        }
        if (aVar.c() != MutabilityQualifier.MUTABLE || typeComponentPosition != TypeComponentPosition.FLEXIBLE_UPPER) {
            return null;
        }
        qw0 qw0Var2 = (qw0) px0Var;
        if (n85Var.d(qw0Var2)) {
            return n85Var.b(qw0Var2);
        }
        return null;
    }

    public static final md g() {
        return a;
    }

    public static final Boolean h(kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.a aVar, TypeComponentPosition typeComponentPosition) {
        if (!rbb.a(typeComponentPosition)) {
            return null;
        }
        NullabilityQualifier nullabilityQualifierD = aVar.d();
        int i = nullabilityQualifierD == null ? -1 : a.a[nullabilityQualifierD.ordinal()];
        if (i == 1) {
            return Boolean.TRUE;
        }
        if (i != 2) {
            return null;
        }
        return Boolean.FALSE;
    }

    public static final boolean i(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        return xbb.c(yl9.a, eh5Var);
    }
}

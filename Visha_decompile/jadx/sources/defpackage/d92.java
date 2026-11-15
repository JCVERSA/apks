package defpackage;

import kotlin.reflect.jvm.internal.impl.builtins.a;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

public abstract class d92 {
    public static void a(int i) {
        Object[] objArr = new Object[3];
        if (i == 1 || i == 2) {
            objArr[0] = "companionObject";
        } else if (i != 3) {
            objArr[0] = "propertyDescriptor";
        } else {
            objArr[0] = "memberDescriptor";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/DescriptorsJvmAbiUtil";
        if (i == 1) {
            objArr[2] = "isClassCompanionObjectWithBackingFieldsInOuter";
        } else if (i == 2) {
            objArr[2] = "isMappedIntrinsicCompanionObject";
        } else if (i != 3) {
            objArr[2] = "isPropertyWithBackingFieldInOuterClass";
        } else {
            objArr[2] = "hasJvmFieldAnnotation";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static boolean b(CallableMemberDescriptor callableMemberDescriptor) {
        wp3 wp3VarL;
        if (callableMemberDescriptor == null) {
            a(3);
        }
        if ((callableMemberDescriptor instanceof ti8) && (wp3VarL = ((ti8) callableMemberDescriptor).L()) != null && wp3VarL.getAnnotations().h(xc5.b)) {
            return true;
        }
        return callableMemberDescriptor.getAnnotations().h(xc5.b);
    }

    public static boolean c(xt1 xt1Var) {
        if (xt1Var == null) {
            a(1);
        }
        return y82.x(xt1Var) && y82.w(xt1Var.b()) && !d((qw0) xt1Var);
    }

    public static boolean d(qw0 qw0Var) {
        if (qw0Var == null) {
            a(2);
        }
        return ua1.a(a.a, qw0Var);
    }

    public static boolean e(ti8 ti8Var) {
        if (ti8Var == null) {
            a(0);
        }
        if (ti8Var.getKind() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
            return false;
        }
        if (c(ti8Var.b())) {
            return true;
        }
        return y82.x(ti8Var.b()) && b(ti8Var);
    }
}

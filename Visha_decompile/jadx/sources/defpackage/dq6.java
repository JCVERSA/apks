package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;

public abstract class dq6 {
    public static final boolean a(qw0 qw0Var) {
        y45.j(qw0Var, "<this>");
        return qw0Var.j() == Modality.FINAL && qw0Var.getKind() != ClassKind.ENUM_CLASS;
    }
}

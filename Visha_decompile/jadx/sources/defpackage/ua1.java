package defpackage;

import java.util.Set;
import kotlin.reflect.jvm.internal.impl.builtins.a;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

public abstract class ua1 {
    public static final boolean a(a aVar, qw0 qw0Var) {
        y45.j(aVar, "<this>");
        y45.j(qw0Var, "classDescriptor");
        if (y82.x(qw0Var)) {
            Set setB = aVar.b();
            xw0 xw0VarK = DescriptorUtilsKt.k(qw0Var);
            if (i81.d0(setB, xw0VarK != null ? xw0VarK.g() : null)) {
                return true;
            }
        }
        return false;
    }
}

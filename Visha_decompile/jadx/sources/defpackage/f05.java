package defpackage;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.b;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public abstract class f05 {
    public static final boolean a(qw0 qw0Var) {
        return y45.e(DescriptorUtilsKt.l(qw0Var), e.r);
    }

    public static final boolean b(xt1 xt1Var) {
        y45.j(xt1Var, "<this>");
        return h05.b(xt1Var) && !a((qw0) xt1Var);
    }

    public static final boolean c(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        px0 px0VarC = eh5Var.I0().c();
        return px0VarC != null && b(px0VarC);
    }

    public static final boolean d(eh5 eh5Var) {
        px0 px0VarC = eh5Var.I0().c();
        hcb hcbVar = px0VarC instanceof hcb ? (hcb) px0VarC : null;
        if (hcbVar == null) {
            return false;
        }
        return e(TypeUtilsKt.j(hcbVar));
    }

    public static final boolean e(eh5 eh5Var) {
        return c(eh5Var) || d(eh5Var);
    }

    public static final boolean f(CallableMemberDescriptor callableMemberDescriptor) {
        y45.j(callableMemberDescriptor, "descriptor");
        b bVar = callableMemberDescriptor instanceof b ? (b) callableMemberDescriptor : null;
        if (bVar == null || b92.g(bVar.getVisibility())) {
            return false;
        }
        qw0 qw0VarF = bVar.F();
        y45.i(qw0VarF, "constructorDescriptor.constructedClass");
        if (h05.b(qw0VarF) || y82.G(bVar.F())) {
            return false;
        }
        List listF = bVar.f();
        y45.i(listF, "constructorDescriptor.valueParameters");
        List list = listF;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            eh5 type = ((h) it.next()).getType();
            y45.i(type, "it.type");
            if (e(type)) {
                return true;
            }
        }
        return false;
    }
}

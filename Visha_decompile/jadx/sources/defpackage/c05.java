package defpackage;

import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.calls.a;
import kotlin.reflect.jvm.internal.calls.c;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.n;

public abstract class c05 {
    public static final Object a(Object obj, CallableMemberDescriptor callableMemberDescriptor) {
        eh5 eh5VarE;
        Class clsI;
        Method methodF;
        y45.j(callableMemberDescriptor, "descriptor");
        return (((callableMemberDescriptor instanceof ti8) && h05.e((xnb) callableMemberDescriptor)) || (eh5VarE = e(callableMemberDescriptor)) == null || (clsI = i(eh5VarE)) == null || (methodF = f(clsI, callableMemberDescriptor)) == null) ? obj : methodF.invoke(obj, null);
    }

    public static final a b(a aVar, CallableMemberDescriptor callableMemberDescriptor, boolean z) {
        eh5 returnType;
        y45.j(aVar, "<this>");
        y45.j(callableMemberDescriptor, "descriptor");
        if (!h05.a(callableMemberDescriptor)) {
            List listF = callableMemberDescriptor.f();
            y45.i(listF, "descriptor.valueParameters");
            List list = listF;
            if ((list instanceof Collection) && list.isEmpty()) {
                returnType = callableMemberDescriptor.getReturnType();
                return returnType != null ? aVar : aVar;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                eh5 type = ((h) it.next()).getType();
                y45.i(type, "it.type");
                if (h05.c(type)) {
                }
            }
            returnType = callableMemberDescriptor.getReturnType();
            if ((returnType != null || !h05.c(returnType)) && ((aVar instanceof jk0) || !g(callableMemberDescriptor))) {
                return aVar;
            }
        }
        return new c(callableMemberDescriptor, aVar, z);
    }

    public static a c(a aVar, CallableMemberDescriptor callableMemberDescriptor, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return b(aVar, callableMemberDescriptor, z);
    }

    public static final Method d(Class cls, CallableMemberDescriptor callableMemberDescriptor) {
        y45.j(cls, "<this>");
        y45.j(callableMemberDescriptor, "descriptor");
        try {
            Method declaredMethod = cls.getDeclaredMethod("box-impl", f(cls, callableMemberDescriptor).getReturnType());
            y45.i(declaredMethod, "{\n        getDeclaredMet…riptor).returnType)\n    }");
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            throw new KotlinReflectionInternalError("No box method found in inline class: " + cls + " (calling " + callableMemberDescriptor + ')');
        }
    }

    public static final eh5 e(CallableMemberDescriptor callableMemberDescriptor) {
        ro8 ro8VarB0 = callableMemberDescriptor.b0();
        ro8 ro8VarZ = callableMemberDescriptor.Z();
        if (ro8VarB0 != null) {
            return ro8VarB0.getType();
        }
        if (ro8VarZ != null) {
            if (callableMemberDescriptor instanceof kotlin.reflect.jvm.internal.impl.descriptors.c) {
                return ro8VarZ.getType();
            }
            xt1 xt1VarB = callableMemberDescriptor.b();
            qw0 qw0Var = xt1VarB instanceof qw0 ? (qw0) xt1VarB : null;
            if (qw0Var != null) {
                return qw0Var.q();
            }
        }
        return null;
    }

    public static final Method f(Class cls, CallableMemberDescriptor callableMemberDescriptor) {
        y45.j(cls, "<this>");
        y45.j(callableMemberDescriptor, "descriptor");
        try {
            Method declaredMethod = cls.getDeclaredMethod("unbox-impl", null);
            y45.i(declaredMethod, "{\n        getDeclaredMet…LINE_CLASS_MEMBERS)\n    }");
            return declaredMethod;
        } catch (NoSuchMethodException unused) {
            throw new KotlinReflectionInternalError("No unbox method found in inline class: " + cls + " (calling " + callableMemberDescriptor + ')');
        }
    }

    public static final boolean g(CallableMemberDescriptor callableMemberDescriptor) {
        eh5 eh5VarE = e(callableMemberDescriptor);
        return eh5VarE != null && h05.c(eh5VarE);
    }

    public static final Class h(xt1 xt1Var) {
        if (!(xt1Var instanceof qw0) || !h05.b(xt1Var)) {
            return null;
        }
        qw0 qw0Var = (qw0) xt1Var;
        Class clsP = clb.p(qw0Var);
        if (clsP != null) {
            return clsP;
        }
        throw new KotlinReflectionInternalError("Class object for the class " + qw0Var.getName() + " cannot be found (classId=" + DescriptorUtilsKt.k((px0) xt1Var) + ')');
    }

    public static final Class i(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        Class clsH = h(eh5Var.I0().c());
        if (clsH == null) {
            return null;
        }
        if (!n.l(eh5Var)) {
            return clsH;
        }
        eh5 eh5VarG = h05.g(eh5Var);
        if (eh5VarG == null || n.l(eh5VarG) || d.s0(eh5VarG)) {
            return null;
        }
        return clsH;
    }
}

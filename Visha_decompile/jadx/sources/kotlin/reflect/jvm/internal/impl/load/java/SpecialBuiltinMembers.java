package kotlin.reflect.jvm.internal.impl.load.java;

import defpackage.by6;
import defpackage.e74;
import defpackage.pbb;
import defpackage.qw0;
import defpackage.rn0;
import defpackage.sm9;
import defpackage.ti8;
import defpackage.v65;
import defpackage.xt1;
import defpackage.y45;
import defpackage.y82;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

public abstract class SpecialBuiltinMembers {
    public static final boolean a(CallableMemberDescriptor callableMemberDescriptor) {
        y45.j(callableMemberDescriptor, "<this>");
        return d(callableMemberDescriptor) != null;
    }

    public static final String b(CallableMemberDescriptor callableMemberDescriptor) {
        CallableMemberDescriptor callableMemberDescriptorS;
        by6 by6VarI;
        y45.j(callableMemberDescriptor, "callableMemberDescriptor");
        CallableMemberDescriptor callableMemberDescriptorC = c(callableMemberDescriptor);
        if (callableMemberDescriptorC == null || (callableMemberDescriptorS = DescriptorUtilsKt.s(callableMemberDescriptorC)) == null) {
            return null;
        }
        if (callableMemberDescriptorS instanceof ti8) {
            return ClassicBuiltinSpecialProperties.a.a(callableMemberDescriptorS);
        }
        if (!(callableMemberDescriptorS instanceof g) || (by6VarI = BuiltinMethodsWithDifferentJvmName.n.i((g) callableMemberDescriptorS)) == null) {
            return null;
        }
        return by6VarI.b();
    }

    public static final CallableMemberDescriptor c(CallableMemberDescriptor callableMemberDescriptor) {
        if (d.g0(callableMemberDescriptor)) {
            return d(callableMemberDescriptor);
        }
        return null;
    }

    public static final CallableMemberDescriptor d(CallableMemberDescriptor callableMemberDescriptor) {
        y45.j(callableMemberDescriptor, "<this>");
        if (!SpecialGenericSignatures.a.g().contains(callableMemberDescriptor.getName()) && !rn0.a.d().contains(DescriptorUtilsKt.s(callableMemberDescriptor).getName())) {
            return null;
        }
        if (callableMemberDescriptor instanceof ti8 ? true : callableMemberDescriptor instanceof f) {
            return DescriptorUtilsKt.f(callableMemberDescriptor, false, new e74() {
                @Override
                public final Boolean invoke(CallableMemberDescriptor callableMemberDescriptor2) {
                    y45.j(callableMemberDescriptor2, "it");
                    return Boolean.valueOf(ClassicBuiltinSpecialProperties.a.b(DescriptorUtilsKt.s(callableMemberDescriptor2)));
                }
            }, 1, null);
        }
        if (callableMemberDescriptor instanceof g) {
            return DescriptorUtilsKt.f(callableMemberDescriptor, false, new e74() {
                @Override
                public final Boolean invoke(CallableMemberDescriptor callableMemberDescriptor2) {
                    y45.j(callableMemberDescriptor2, "it");
                    return Boolean.valueOf(BuiltinMethodsWithDifferentJvmName.n.j((g) callableMemberDescriptor2));
                }
            }, 1, null);
        }
        return null;
    }

    public static final CallableMemberDescriptor e(CallableMemberDescriptor callableMemberDescriptor) {
        y45.j(callableMemberDescriptor, "<this>");
        CallableMemberDescriptor callableMemberDescriptorD = d(callableMemberDescriptor);
        if (callableMemberDescriptorD != null) {
            return callableMemberDescriptorD;
        }
        BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature = BuiltinMethodsWithSpecialGenericSignature.n;
        by6 name = callableMemberDescriptor.getName();
        y45.i(name, "name");
        if (builtinMethodsWithSpecialGenericSignature.l(name)) {
            return DescriptorUtilsKt.f(callableMemberDescriptor, false, new e74() {
                @Override
                public final Boolean invoke(CallableMemberDescriptor callableMemberDescriptor2) {
                    y45.j(callableMemberDescriptor2, "it");
                    return Boolean.valueOf(d.g0(callableMemberDescriptor2) && BuiltinMethodsWithSpecialGenericSignature.m(callableMemberDescriptor2) != null);
                }
            }, 1, null);
        }
        return null;
    }

    public static final boolean f(qw0 qw0Var, kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
        y45.j(qw0Var, "<this>");
        y45.j(aVar, "specialCallableDescriptor");
        xt1 xt1VarB = aVar.b();
        y45.h(xt1VarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        sm9 sm9VarQ = ((qw0) xt1VarB).q();
        y45.i(sm9VarQ, "specialCallableDescripto…ssDescriptor).defaultType");
        for (qw0 qw0VarS = y82.s(qw0Var); qw0VarS != null; qw0VarS = y82.s(qw0VarS)) {
            if (!(qw0VarS instanceof v65) && pbb.b(qw0VarS.q(), sm9VarQ) != null) {
                return !d.g0(qw0VarS);
            }
        }
        return false;
    }

    public static final boolean g(CallableMemberDescriptor callableMemberDescriptor) {
        y45.j(callableMemberDescriptor, "<this>");
        return DescriptorUtilsKt.s(callableMemberDescriptor).b() instanceof v65;
    }

    public static final boolean h(CallableMemberDescriptor callableMemberDescriptor) {
        y45.j(callableMemberDescriptor, "<this>");
        return g(callableMemberDescriptor) || d.g0(callableMemberDescriptor);
    }
}

package kotlin.reflect.jvm.internal.impl.load.java;

import defpackage.by6;
import defpackage.e74;
import defpackage.i81;
import defpackage.ko6;
import defpackage.y45;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

public final class BuiltinMethodsWithSpecialGenericSignature extends SpecialGenericSignatures {
    public static final BuiltinMethodsWithSpecialGenericSignature n = new BuiltinMethodsWithSpecialGenericSignature();

    public static final e k(e eVar) {
        y45.j(eVar, "functionDescriptor");
        BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature = n;
        by6 name = eVar.getName();
        y45.i(name, "functionDescriptor.name");
        if (builtinMethodsWithSpecialGenericSignature.l(name)) {
            return (e) DescriptorUtilsKt.f(eVar, false, new e74() {
                @Override
                public final Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
                    y45.j(callableMemberDescriptor, "it");
                    return Boolean.valueOf(BuiltinMethodsWithSpecialGenericSignature.n.j(callableMemberDescriptor));
                }
            }, 1, null);
        }
        return null;
    }

    public static final SpecialGenericSignatures.SpecialSignatureInfo m(CallableMemberDescriptor callableMemberDescriptor) {
        CallableMemberDescriptor callableMemberDescriptorF;
        String strD;
        y45.j(callableMemberDescriptor, "<this>");
        SpecialGenericSignatures.a aVar = SpecialGenericSignatures.a;
        if (!aVar.d().contains(callableMemberDescriptor.getName()) || (callableMemberDescriptorF = DescriptorUtilsKt.f(callableMemberDescriptor, false, new e74() {
            @Override
            public final Boolean invoke(CallableMemberDescriptor callableMemberDescriptor2) {
                y45.j(callableMemberDescriptor2, "it");
                return Boolean.valueOf((callableMemberDescriptor2 instanceof e) && BuiltinMethodsWithSpecialGenericSignature.n.j(callableMemberDescriptor2));
            }
        }, 1, null)) == null || (strD = ko6.d(callableMemberDescriptorF)) == null) {
            return null;
        }
        return aVar.l(strD);
    }

    public final boolean j(CallableMemberDescriptor callableMemberDescriptor) {
        return i81.d0(SpecialGenericSignatures.a.e(), ko6.d(callableMemberDescriptor));
    }

    public final boolean l(by6 by6Var) {
        y45.j(by6Var, "<this>");
        return SpecialGenericSignatures.a.d().contains(by6Var);
    }
}

package kotlin.reflect.jvm.internal.impl.load.java;

import defpackage.by6;
import defpackage.e74;
import defpackage.i81;
import defpackage.rn0;
import defpackage.y45;
import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

public final class ClassicBuiltinSpecialProperties {
    public static final ClassicBuiltinSpecialProperties a = new ClassicBuiltinSpecialProperties();

    public final String a(CallableMemberDescriptor callableMemberDescriptor) {
        by6 by6Var;
        y45.j(callableMemberDescriptor, "<this>");
        d.g0(callableMemberDescriptor);
        CallableMemberDescriptor callableMemberDescriptorF = DescriptorUtilsKt.f(DescriptorUtilsKt.s(callableMemberDescriptor), false, new e74() {
            @Override
            public final Boolean invoke(CallableMemberDescriptor callableMemberDescriptor2) {
                y45.j(callableMemberDescriptor2, "it");
                return Boolean.valueOf(ClassicBuiltinSpecialProperties.a.b(callableMemberDescriptor2));
            }
        }, 1, null);
        if (callableMemberDescriptorF == null || (by6Var = (by6) rn0.a.a().get(DescriptorUtilsKt.l(callableMemberDescriptorF))) == null) {
            return null;
        }
        return by6Var.b();
    }

    public final boolean b(CallableMemberDescriptor callableMemberDescriptor) {
        y45.j(callableMemberDescriptor, "callableMemberDescriptor");
        if (rn0.a.d().contains(callableMemberDescriptor.getName())) {
            return c(callableMemberDescriptor);
        }
        return false;
    }

    public final boolean c(CallableMemberDescriptor callableMemberDescriptor) {
        if (i81.d0(rn0.a.c(), DescriptorUtilsKt.h(callableMemberDescriptor)) && callableMemberDescriptor.f().isEmpty()) {
            return true;
        }
        if (!d.g0(callableMemberDescriptor)) {
            return false;
        }
        Collection collectionE = callableMemberDescriptor.e();
        y45.i(collectionE, "overriddenDescriptors");
        Collection<CallableMemberDescriptor> collection = collectionE;
        if (!collection.isEmpty()) {
            for (CallableMemberDescriptor callableMemberDescriptor2 : collection) {
                ClassicBuiltinSpecialProperties classicBuiltinSpecialProperties = a;
                y45.i(callableMemberDescriptor2, "it");
                if (classicBuiltinSpecialProperties.b(callableMemberDescriptor2)) {
                    return true;
                }
            }
        }
        return false;
    }
}

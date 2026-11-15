package kotlin.reflect.jvm.internal.impl.load.java;

import defpackage.by6;
import defpackage.e74;
import defpackage.ko6;
import defpackage.y45;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

public final class BuiltinMethodsWithDifferentJvmName extends SpecialGenericSignatures {
    public static final BuiltinMethodsWithDifferentJvmName n = new BuiltinMethodsWithDifferentJvmName();

    public final by6 i(g gVar) {
        y45.j(gVar, "functionDescriptor");
        Map mapJ = SpecialGenericSignatures.a.j();
        String strD = ko6.d(gVar);
        if (strD == null) {
            return null;
        }
        return (by6) mapJ.get(strD);
    }

    public final boolean j(final g gVar) {
        y45.j(gVar, "functionDescriptor");
        return d.g0(gVar) && DescriptorUtilsKt.f(gVar, false, new e74() {
            {
                super(1);
            }

            @Override
            public final Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
                y45.j(callableMemberDescriptor, "it");
                return Boolean.valueOf(SpecialGenericSignatures.a.j().containsKey(ko6.d(gVar)));
            }
        }, 1, null) != null;
    }

    public final boolean k(g gVar) {
        y45.j(gVar, "<this>");
        return y45.e(gVar.getName().b(), "removeAt") && y45.e(ko6.d(gVar), SpecialGenericSignatures.a.h().b());
    }
}

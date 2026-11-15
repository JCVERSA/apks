package kotlin.reflect.jvm.internal.impl.load.java;

import defpackage.by6;
import defpackage.eh5;
import defpackage.i81;
import defpackage.ko6;
import defpackage.px0;
import defpackage.qd5;
import defpackage.qw0;
import defpackage.v65;
import defpackage.xt1;
import defpackage.y45;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public final class a implements ExternalOverridabilityCondition {
    public static final C0383a a = new C0383a(null);

    public static final class C0383a {
        public C0383a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
            y45.j(aVar, "superDescriptor");
            y45.j(aVar2, "subDescriptor");
            if ((aVar2 instanceof JavaMethodDescriptor) && (aVar instanceof e)) {
                JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) aVar2;
                javaMethodDescriptor.f().size();
                e eVar = (e) aVar;
                eVar.f().size();
                List listF = javaMethodDescriptor.a().f();
                y45.i(listF, "subDescriptor.original.valueParameters");
                List listF2 = eVar.a().f();
                y45.i(listF2, "superDescriptor.original.valueParameters");
                for (Pair pair : i81.l1(listF, listF2)) {
                    h hVar = (h) pair.component1();
                    h hVar2 = (h) pair.component2();
                    y45.i(hVar, "subParameter");
                    boolean z = c((e) aVar2, hVar) instanceof qd5.d;
                    y45.i(hVar2, "superParameter");
                    if (z != (c(eVar, hVar2) instanceof qd5.d)) {
                        return true;
                    }
                }
            }
            return false;
        }

        public final boolean b(e eVar) {
            if (eVar.f().size() != 1) {
                return false;
            }
            xt1 xt1VarB = eVar.b();
            qw0 qw0Var = xt1VarB instanceof qw0 ? (qw0) xt1VarB : null;
            if (qw0Var == null) {
                return false;
            }
            List listF = eVar.f();
            y45.i(listF, "f.valueParameters");
            px0 px0VarC = ((h) i81.O0(listF)).getType().I0().c();
            qw0 qw0Var2 = px0VarC instanceof qw0 ? (qw0) px0VarC : null;
            return qw0Var2 != null && d.r0(qw0Var) && y45.e(DescriptorUtilsKt.l(qw0Var), DescriptorUtilsKt.l(qw0Var2));
        }

        public final qd5 c(e eVar, h hVar) {
            if (ko6.e(eVar) || b(eVar)) {
                eh5 type = hVar.getType();
                y45.i(type, "valueParameterDescriptor.type");
                return ko6.g(TypeUtilsKt.w(type));
            }
            eh5 type2 = hVar.getType();
            y45.i(type2, "valueParameterDescriptor.type");
            return ko6.g(type2);
        }

        public C0383a() {
        }
    }

    @Override
    public ExternalOverridabilityCondition.Result a(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, qw0 qw0Var) {
        y45.j(aVar, "superDescriptor");
        y45.j(aVar2, "subDescriptor");
        if (!c(aVar, aVar2, qw0Var) && !a.a(aVar, aVar2)) {
            return ExternalOverridabilityCondition.Result.UNKNOWN;
        }
        return ExternalOverridabilityCondition.Result.INCOMPATIBLE;
    }

    @Override
    public ExternalOverridabilityCondition.Contract b() {
        return ExternalOverridabilityCondition.Contract.CONFLICTS_ONLY;
    }

    public final boolean c(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, qw0 qw0Var) {
        if ((aVar instanceof CallableMemberDescriptor) && (aVar2 instanceof e) && !d.g0(aVar2)) {
            BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature = BuiltinMethodsWithSpecialGenericSignature.n;
            e eVar = (e) aVar2;
            by6 name = eVar.getName();
            y45.i(name, "subDescriptor.name");
            if (!builtinMethodsWithSpecialGenericSignature.l(name)) {
                SpecialGenericSignatures.a aVar3 = SpecialGenericSignatures.a;
                by6 name2 = eVar.getName();
                y45.i(name2, "subDescriptor.name");
                if (!aVar3.k(name2)) {
                    return false;
                }
            }
            CallableMemberDescriptor callableMemberDescriptorE = SpecialBuiltinMembers.e((CallableMemberDescriptor) aVar);
            boolean z = aVar instanceof e;
            e eVar2 = z ? (e) aVar : null;
            if (!(eVar2 != null && eVar.B0() == eVar2.B0()) && (callableMemberDescriptorE == null || !eVar.B0())) {
                return true;
            }
            if ((qw0Var instanceof v65) && eVar.v0() == null && callableMemberDescriptorE != null && !SpecialBuiltinMembers.f(qw0Var, callableMemberDescriptorE)) {
                if ((callableMemberDescriptorE instanceof e) && z && BuiltinMethodsWithSpecialGenericSignature.k((e) callableMemberDescriptorE) != null) {
                    String strC = ko6.c(eVar, false, false, 2, null);
                    e eVarA = ((e) aVar).a();
                    y45.i(eVarA, "superDescriptor.original");
                    if (y45.e(strC, ko6.c(eVarA, false, false, 2, null))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }
}

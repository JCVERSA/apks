package kotlin.reflect.jvm.internal.impl.load.java;

import defpackage.e74;
import defpackage.eh5;
import defpackage.i81;
import defpackage.pc9;
import defpackage.qw0;
import defpackage.ro8;
import defpackage.y45;
import defpackage.y71;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawSubstitution;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.sequences.SequencesKt___SequencesKt;

public final class ErasedOverridabilityCondition implements ExternalOverridabilityCondition {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[OverridingUtil.OverrideCompatibilityInfo.Result.values().length];
            try {
                iArr[OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    @Override
    public ExternalOverridabilityCondition.Result a(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2, qw0 qw0Var) {
        y45.j(aVar, "superDescriptor");
        y45.j(aVar2, "subDescriptor");
        if (aVar2 instanceof JavaMethodDescriptor) {
            JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) aVar2;
            List typeParameters = javaMethodDescriptor.getTypeParameters();
            y45.i(typeParameters, "subDescriptor.typeParameters");
            if (typeParameters.isEmpty()) {
                OverridingUtil.OverrideCompatibilityInfo overrideCompatibilityInfoW = OverridingUtil.w(aVar, aVar2);
                if ((overrideCompatibilityInfoW != null ? overrideCompatibilityInfoW.c() : null) != null) {
                    return ExternalOverridabilityCondition.Result.UNKNOWN;
                }
                List listF = javaMethodDescriptor.f();
                y45.i(listF, "subDescriptor.valueParameters");
                pc9 pc9VarR = SequencesKt___SequencesKt.R(i81.b0(listF), new e74() {
                    @Override
                    public final eh5 invoke(h hVar) {
                        return hVar.getType();
                    }
                });
                eh5 returnType = javaMethodDescriptor.getReturnType();
                y45.g(returnType);
                pc9 pc9VarY = SequencesKt___SequencesKt.Y(pc9VarR, returnType);
                ro8 ro8VarB0 = javaMethodDescriptor.b0();
                for (eh5 eh5Var : SequencesKt___SequencesKt.X(pc9VarY, y71.o(ro8VarB0 != null ? ro8VarB0.getType() : null))) {
                    if (!eh5Var.G0().isEmpty() && !(eh5Var.L0() instanceof RawTypeImpl)) {
                        return ExternalOverridabilityCondition.Result.UNKNOWN;
                    }
                }
                kotlin.reflect.jvm.internal.impl.descriptors.a aVarBuild = (kotlin.reflect.jvm.internal.impl.descriptors.a) aVar.c(new RawSubstitution(null, 1, null).c());
                if (aVarBuild == null) {
                    return ExternalOverridabilityCondition.Result.UNKNOWN;
                }
                if (aVarBuild instanceof g) {
                    g gVar = (g) aVarBuild;
                    List typeParameters2 = gVar.getTypeParameters();
                    y45.i(typeParameters2, "erasedSuper.typeParameters");
                    if (!typeParameters2.isEmpty()) {
                        aVarBuild = gVar.l().i(y71.k()).build();
                        y45.g(aVarBuild);
                    }
                }
                OverridingUtil.OverrideCompatibilityInfo.Result resultC = OverridingUtil.f.F(aVarBuild, aVar2, false).c();
                y45.i(resultC, "DEFAULT.isOverridableByW…Descriptor, false).result");
                return a.a[resultC.ordinal()] == 1 ? ExternalOverridabilityCondition.Result.OVERRIDABLE : ExternalOverridabilityCondition.Result.UNKNOWN;
            }
        }
        return ExternalOverridabilityCondition.Result.UNKNOWN;
    }

    @Override
    public ExternalOverridabilityCondition.Contract b() {
        return ExternalOverridabilityCondition.Contract.SUCCESS_ONLY;
    }
}

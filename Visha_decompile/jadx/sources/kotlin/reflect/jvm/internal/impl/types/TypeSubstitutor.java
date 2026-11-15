package kotlin.reflect.jvm.internal.impl.types;

import defpackage.cdb;
import defpackage.co8;
import defpackage.ddb;
import defpackage.e74;
import defpackage.eh5;
import defpackage.fh5;
import defpackage.fy3;
import defpackage.gd3;
import defpackage.hcb;
import defpackage.id3;
import defpackage.ky3;
import defpackage.lv3;
import defpackage.lz4;
import defpackage.mbb;
import defpackage.mcb;
import defpackage.md;
import defpackage.mgb;
import defpackage.o54;
import defpackage.ocb;
import defpackage.pe3;
import defpackage.sbb;
import defpackage.scb;
import defpackage.sm9;
import defpackage.tu9;
import defpackage.zo1;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt;

public class TypeSubstitutor {
    public static final TypeSubstitutor b = g(l.b);
    public final l a;

    public static final class SubstitutionException extends Exception {
        public SubstitutionException(String str) {
            super(str);
        }
    }

    public enum VarianceConflictType {
        NO_CONFLICT,
        IN_IN_OUT_POSITION,
        OUT_IN_IN_POSITION
    }

    public static class a implements e74 {
        private static void a(int i) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "name", "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$1", "invoke"));
        }

        @Override
        public Boolean invoke(o54 o54Var) {
            if (o54Var == null) {
                a(0);
            }
            return Boolean.valueOf(!o54Var.equals(kotlin.reflect.jvm.internal.impl.builtins.e.a.Q));
        }
    }

    public static class b {
        public static final int[] a;

        static {
            int[] iArr = new int[VarianceConflictType.values().length];
            a = iArr;
            try {
                iArr[VarianceConflictType.OUT_IN_IN_POSITION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[VarianceConflictType.IN_IN_OUT_POSITION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[VarianceConflictType.NO_CONFLICT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public TypeSubstitutor(l lVar) {
        if (lVar == null) {
            a(7);
        }
        this.a = lVar;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0021 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:56:0x00b8  */
    public static void a(int i) {
        String str;
        int i2;
        if (i != 1 && i != 2 && i != 8 && i != 34 && i != 37) {
            switch (i) {
                default:
                    switch (i) {
                        default:
                            switch (i) {
                                default:
                                    switch (i) {
                                        case 40:
                                        case 41:
                                        case 42:
                                            break;
                                        default:
                                            str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                                            break;
                                    }
                                case 29:
                                case 30:
                                case 31:
                                case 32:
                                    str = "@NotNull method %s.%s must not return null";
                                    break;
                            }
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            str = "@NotNull method %s.%s must not return null";
                            break;
                    }
                case 11:
                case 12:
                case 13:
                    str = "@NotNull method %s.%s must not return null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i != 1 && i != 2 && i != 8 && i != 34 && i != 37) {
            switch (i) {
                case 11:
                case 12:
                case 13:
                    i2 = 2;
                    break;
                default:
                    switch (i) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            i2 = 2;
                            break;
                        default:
                            switch (i) {
                                case 29:
                                case 30:
                                case 31:
                                case 32:
                                    i2 = 2;
                                    break;
                                default:
                                    switch (i) {
                                        case 40:
                                        case 41:
                                        case 42:
                                            i2 = 2;
                                            break;
                                        default:
                                            i2 = 3;
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            i2 = 2;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 2:
            case 8:
            case 11:
            case 12:
            case 13:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 29:
            case 30:
            case 31:
            case 32:
            case 34:
            case 37:
            case 40:
            case 41:
            case 42:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor";
                break;
            case 3:
                objArr[0] = "first";
                break;
            case 4:
                objArr[0] = "second";
                break;
            case 5:
                objArr[0] = "substitutionContext";
                break;
            case 6:
                objArr[0] = "context";
                break;
            case 7:
            default:
                objArr[0] = "substitution";
                break;
            case 9:
            case 14:
                objArr[0] = "type";
                break;
            case 10:
            case 15:
                objArr[0] = "howThisTypeIsUsed";
                break;
            case 16:
            case 17:
            case 36:
                objArr[0] = "typeProjection";
                break;
            case 18:
            case 28:
                objArr[0] = "originalProjection";
                break;
            case 26:
                objArr[0] = "originalType";
                break;
            case 27:
                objArr[0] = "substituted";
                break;
            case 33:
                objArr[0] = "annotations";
                break;
            case 35:
            case 38:
                objArr[0] = "typeParameterVariance";
                break;
            case 39:
                objArr[0] = "projectionKind";
                break;
        }
        if (i == 1) {
            objArr[1] = "replaceWithNonApproximatingSubstitution";
        } else if (i == 2) {
            objArr[1] = "replaceWithContravariantApproximatingSubstitution";
        } else if (i == 8) {
            objArr[1] = "getSubstitution";
        } else if (i == 34) {
            objArr[1] = "filterOutUnsafeVariance";
        } else if (i != 37) {
            switch (i) {
                case 11:
                case 12:
                case 13:
                    objArr[1] = "safeSubstitute";
                    break;
                default:
                    switch (i) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            objArr[1] = "unsafeSubstitute";
                            break;
                        default:
                            switch (i) {
                                case 29:
                                case 30:
                                case 31:
                                case 32:
                                    objArr[1] = "projectedTypeForConflictedTypeWithUnsafeVariance";
                                    break;
                                default:
                                    switch (i) {
                                        case 40:
                                        case 41:
                                        case 42:
                                            objArr[1] = "combine";
                                            break;
                                        default:
                                            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor";
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            objArr[1] = "combine";
        }
        switch (i) {
            case 1:
            case 2:
            case 8:
            case 11:
            case 12:
            case 13:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 29:
            case 30:
            case 31:
            case 32:
            case 34:
            case 37:
            case 40:
            case 41:
            case 42:
                break;
            case 3:
            case 4:
                objArr[2] = "createChainedSubstitutor";
                break;
            case 5:
            case 6:
            default:
                objArr[2] = "create";
                break;
            case 7:
                objArr[2] = MethodDecl.initName;
                break;
            case 9:
            case 10:
                objArr[2] = "safeSubstitute";
                break;
            case 14:
            case 15:
            case 16:
                objArr[2] = "substitute";
                break;
            case 17:
                objArr[2] = "substituteWithoutApproximation";
                break;
            case 18:
                objArr[2] = "unsafeSubstitute";
                break;
            case 26:
            case 27:
            case 28:
                objArr[2] = "projectedTypeForConflictedTypeWithUnsafeVariance";
                break;
            case 33:
                objArr[2] = "filterOutUnsafeVariance";
                break;
            case 35:
            case 36:
            case 38:
            case 39:
                objArr[2] = "combine";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 1 && i != 2 && i != 8 && i != 34 && i != 37) {
            switch (i) {
                case 11:
                case 12:
                case 13:
                    break;
                default:
                    switch (i) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            break;
                        default:
                            switch (i) {
                                case 29:
                                case 30:
                                case 31:
                                case 32:
                                    break;
                                default:
                                    switch (i) {
                                        case 40:
                                        case 41:
                                        case 42:
                                            break;
                                        default:
                                            throw new IllegalArgumentException(str2);
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        throw new IllegalStateException(str2);
    }

    public static void b(int i, mcb mcbVar, l lVar) {
        if (i <= 100) {
            return;
        }
        throw new IllegalStateException("Recursion too deep. Most likely infinite loop while substituting " + o(mcbVar) + "; substitution: " + o(lVar));
    }

    public static Variance c(Variance variance, mcb mcbVar) {
        if (variance == null) {
            a(35);
        }
        if (mcbVar == null) {
            a(36);
        }
        if (!mcbVar.b()) {
            return d(variance, mcbVar.c());
        }
        Variance variance2 = Variance.OUT_VARIANCE;
        if (variance2 == null) {
            a(37);
        }
        return variance2;
    }

    public static Variance d(Variance variance, Variance variance2) {
        if (variance == null) {
            a(38);
        }
        if (variance2 == null) {
            a(39);
        }
        Variance variance3 = Variance.INVARIANT;
        if (variance == variance3) {
            if (variance2 == null) {
                a(40);
            }
            return variance2;
        }
        if (variance2 == variance3) {
            if (variance == null) {
                a(41);
            }
            return variance;
        }
        if (variance == variance2) {
            if (variance2 == null) {
                a(42);
            }
            return variance2;
        }
        throw new AssertionError("Variance conflict: type parameter variance '" + variance + "' and projection kind '" + variance2 + "' cannot be combined");
    }

    public static VarianceConflictType e(Variance variance, Variance variance2) {
        Variance variance3 = Variance.IN_VARIANCE;
        if (variance == variance3 && variance2 == Variance.OUT_VARIANCE) {
            return VarianceConflictType.OUT_IN_IN_POSITION;
        }
        return (variance == Variance.OUT_VARIANCE && variance2 == variance3) ? VarianceConflictType.IN_IN_OUT_POSITION : VarianceConflictType.NO_CONFLICT;
    }

    public static TypeSubstitutor f(eh5 eh5Var) {
        if (eh5Var == null) {
            a(6);
        }
        return g(k.i(eh5Var.I0(), eh5Var.G0()));
    }

    public static TypeSubstitutor g(l lVar) {
        if (lVar == null) {
            a(0);
        }
        return new TypeSubstitutor(lVar);
    }

    public static TypeSubstitutor h(l lVar, l lVar2) {
        if (lVar == null) {
            a(3);
        }
        if (lVar2 == null) {
            a(4);
        }
        return g(d.i(lVar, lVar2));
    }

    public static md i(md mdVar) {
        if (mdVar == null) {
            a(33);
        }
        return !mdVar.h(kotlin.reflect.jvm.internal.impl.builtins.e.a.Q) ? mdVar : new lv3(mdVar, new a());
    }

    public static mcb l(eh5 eh5Var, mcb mcbVar, hcb hcbVar, mcb mcbVar2) {
        if (eh5Var == null) {
            a(26);
        }
        if (mcbVar == null) {
            a(27);
        }
        if (mcbVar2 == null) {
            a(28);
        }
        if (!eh5Var.getAnnotations().h(kotlin.reflect.jvm.internal.impl.builtins.e.a.Q)) {
            if (mcbVar == null) {
                a(29);
            }
            return mcbVar;
        }
        sbb sbbVarI0 = mcbVar.getType().I0();
        if (!(sbbVarI0 instanceof NewCapturedTypeConstructor)) {
            return mcbVar;
        }
        mcb mcbVarB = ((NewCapturedTypeConstructor) sbbVarI0).b();
        Variance varianceC = mcbVarB.c();
        VarianceConflictType varianceConflictTypeE = e(mcbVar2.c(), varianceC);
        VarianceConflictType varianceConflictType = VarianceConflictType.OUT_IN_IN_POSITION;
        if (varianceConflictTypeE == varianceConflictType) {
            return new ocb(mcbVarB.getType());
        }
        return (hcbVar != null && e(hcbVar.h(), varianceC) == varianceConflictType) ? new ocb(mcbVarB.getType()) : mcbVar;
    }

    public static String o(Object obj) {
        try {
            return obj.toString();
        } catch (Throwable th) {
            if (pe3.a(th)) {
                throw th;
            }
            return "[Exception while computing toString(): " + th + "]";
        }
    }

    public l j() {
        l lVar = this.a;
        if (lVar == null) {
            a(8);
        }
        return lVar;
    }

    public boolean k() {
        return this.a.f();
    }

    public TypeSubstitutor m() {
        l lVar = this.a;
        return ((lVar instanceof lz4) && lVar.b()) ? new TypeSubstitutor(new lz4(((lz4) this.a).j(), ((lz4) this.a).i(), false)) : this;
    }

    public eh5 n(eh5 eh5Var, Variance variance) {
        if (eh5Var == null) {
            a(9);
        }
        if (variance == null) {
            a(10);
        }
        if (k()) {
            if (eh5Var == null) {
                a(11);
            }
            return eh5Var;
        }
        try {
            eh5 type = u(new ocb(variance, eh5Var), null, 0).getType();
            if (type == null) {
                a(12);
            }
            return type;
        } catch (SubstitutionException e) {
            gd3 gd3VarD = id3.d(ErrorTypeKind.UNABLE_TO_SUBSTITUTE_TYPE, e.getMessage());
            if (gd3VarD == null) {
                a(13);
            }
            return gd3VarD;
        }
    }

    public eh5 p(eh5 eh5Var, Variance variance) {
        if (eh5Var == null) {
            a(14);
        }
        if (variance == null) {
            a(15);
        }
        mcb mcbVarQ = q(new ocb(variance, j().g(eh5Var, variance)));
        if (mcbVarQ == null) {
            return null;
        }
        return mcbVarQ.getType();
    }

    public mcb q(mcb mcbVar) {
        if (mcbVar == null) {
            a(16);
        }
        mcb mcbVarT = t(mcbVar);
        return (this.a.a() || this.a.b()) ? CapturedTypeApproximationKt.c(mcbVarT, this.a.b()) : mcbVarT;
    }

    public final mcb r(mcb mcbVar, int i) {
        eh5 type = mcbVar.getType();
        Variance varianceC = mcbVar.c();
        if (type.I0().c() instanceof hcb) {
            return mcbVar;
        }
        sm9 sm9VarB = tu9.b(type);
        eh5 eh5VarP = sm9VarB != null ? m().p(sm9VarB, Variance.INVARIANT) : null;
        eh5 eh5VarB = scb.b(type, s(type.I0().getParameters(), type.G0(), i), this.a.d(type.getAnnotations()));
        if ((eh5VarB instanceof sm9) && (eh5VarP instanceof sm9)) {
            eh5VarB = tu9.j((sm9) eh5VarB, (sm9) eh5VarP);
        }
        return new ocb(varianceC, eh5VarB);
    }

    public final List s(List list, List list2, int i) throws SubstitutionException {
        ArrayList arrayList = new ArrayList(list.size());
        boolean z = false;
        for (int i2 = 0; i2 < list.size(); i2++) {
            hcb hcbVar = (hcb) list.get(i2);
            mcb mcbVar = (mcb) list2.get(i2);
            mcb mcbVarU = u(mcbVar, hcbVar, i + 1);
            int i3 = b.a[e(hcbVar.h(), mcbVarU.c()).ordinal()];
            if (i3 == 1 || i3 == 2) {
                mcbVarU = n.s(hcbVar);
            } else if (i3 == 3) {
                Variance varianceH = hcbVar.h();
                Variance variance = Variance.INVARIANT;
                if (varianceH != variance && !mcbVarU.b()) {
                    mcbVarU = new ocb(variance, mcbVarU.getType());
                }
            }
            if (mcbVarU != mcbVar) {
                z = true;
            }
            arrayList.add(mcbVarU);
        }
        return !z ? list2 : arrayList;
    }

    public mcb t(mcb mcbVar) {
        if (mcbVar == null) {
            a(17);
        }
        if (k()) {
            return mcbVar;
        }
        try {
            return u(mcbVar, null, 0);
        } catch (SubstitutionException unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final mcb u(mcb mcbVar, hcb hcbVar, int i) throws SubstitutionException {
        if (mcbVar == null) {
            a(18);
        }
        b(i, mcbVar, this.a);
        if (mcbVar.b()) {
            return mcbVar;
        }
        eh5 type = mcbVar.getType();
        if (type instanceof cdb) {
            cdb cdbVar = (cdb) type;
            mgb mgbVarQ = cdbVar.Q();
            eh5 eh5VarL0 = cdbVar.l0();
            mcb mcbVarU = u(new ocb(mcbVar.c(), mgbVarQ), hcbVar, i + 1);
            return mcbVarU.b() ? mcbVarU : new ocb(mcbVarU.c(), ddb.d(mcbVarU.getType().L0(), p(eh5VarL0, mcbVar.c())));
        }
        if (!e.a(type) && !(type.L0() instanceof co8)) {
            mcb mcbVarE = this.a.e(type);
            mcb mcbVarL = mcbVarE != null ? l(type, mcbVarE, hcbVar, mcbVar) : null;
            Variance varianceC = mcbVar.c();
            if (mcbVarL == null && ky3.b(type) && !mbb.b(type)) {
                fy3 fy3VarA = ky3.a(type);
                int i2 = i + 1;
                mcb mcbVarU2 = u(new ocb(varianceC, fy3VarA.Q0()), hcbVar, i2);
                mcb mcbVarU3 = u(new ocb(varianceC, fy3VarA.R0()), hcbVar, i2);
                return (mcbVarU2.getType() == fy3VarA.Q0() && mcbVarU3.getType() == fy3VarA.R0()) ? mcbVar : new ocb(mcbVarU2.c(), KotlinTypeFactory.d(scb.a(mcbVarU2.getType()), scb.a(mcbVarU3.getType())));
            }
            if (!kotlin.reflect.jvm.internal.impl.builtins.d.n0(type) && !fh5.a(type)) {
                if (mcbVarL == null) {
                    mcb mcbVarR = r(mcbVar, i);
                    if (mcbVarR == null) {
                        a(25);
                    }
                    return mcbVarR;
                }
                VarianceConflictType varianceConflictTypeE = e(varianceC, mcbVarL.c());
                if (!CapturedTypeConstructorKt.d(type)) {
                    int i3 = b.a[varianceConflictTypeE.ordinal()];
                    if (i3 == 1) {
                        throw new SubstitutionException("Out-projection in in-position");
                    }
                    if (i3 == 2) {
                        return new ocb(Variance.OUT_VARIANCE, type.I0().o().I());
                    }
                }
                zo1 zo1VarA = mbb.a(type);
                if (mcbVarL.b()) {
                    return mcbVarL;
                }
                eh5 eh5VarD0 = zo1VarA != null ? zo1VarA.d0(mcbVarL.getType()) : n.q(mcbVarL.getType(), type.J0());
                if (!type.getAnnotations().isEmpty()) {
                    eh5VarD0 = TypeUtilsKt.x(eh5VarD0, new CompositeAnnotations(eh5VarD0.getAnnotations(), i(this.a.d(type.getAnnotations()))));
                }
                if (varianceConflictTypeE == VarianceConflictType.NO_CONFLICT) {
                    varianceC = d(varianceC, mcbVarL.c());
                }
                return new ocb(varianceC, eh5VarD0);
            }
        }
        return mcbVar;
    }
}

package kotlin.reflect.jvm.internal.impl.types;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.b82;
import defpackage.cq9;
import defpackage.e74;
import defpackage.eh5;
import defpackage.fy3;
import defpackage.g72;
import defpackage.gd3;
import defpackage.gw9;
import defpackage.hcb;
import defpackage.i81;
import defpackage.id3;
import defpackage.ky3;
import defpackage.mcb;
import defpackage.mgb;
import defpackage.ocb;
import defpackage.pc3;
import defpackage.px0;
import defpackage.qw0;
import defpackage.sbb;
import defpackage.sm9;
import defpackage.tu9;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;

public abstract class n {
    public static final sm9 a = id3.d(ErrorTypeKind.DONT_CARE, new String[0]);
    public static final sm9 b = id3.d(ErrorTypeKind.UNINFERRED_LAMBDA_PARAMETER_TYPE, new String[0]);
    public static final sm9 c = new a("NO_EXPECTED_TYPE");
    public static final sm9 d = new a("UNIT_EXPECTED_TYPE");

    public static class a extends b82 {
        public final String c;

        public a(String str) {
            this.c = str;
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0030  */
        private static void U0(int i) {
            String str = (i == 1 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 1 || i == 4) ? 2 : 3];
            if (i == 1) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType";
            } else if (i == 2) {
                objArr[0] = "delegate";
            } else if (i == 3) {
                objArr[0] = "kotlinTypeRefiner";
            } else if (i != 4) {
                objArr[0] = "newAttributes";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType";
            }
            if (i == 1) {
                objArr[1] = "toString";
            } else if (i != 4) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType";
            } else {
                objArr[1] = "refine";
            }
            if (i != 1) {
                if (i == 2) {
                    objArr[2] = "replaceDelegate";
                } else if (i == 3) {
                    objArr[2] = "refine";
                } else if (i != 4) {
                    objArr[2] = "replaceAttributes";
                }
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 4) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        @Override
        public sm9 M0(boolean z) {
            throw new IllegalStateException(this.c);
        }

        @Override
        public sm9 O0(j jVar) {
            if (jVar == null) {
                U0(0);
            }
            throw new IllegalStateException(this.c);
        }

        @Override
        public sm9 R0() {
            throw new IllegalStateException(this.c);
        }

        @Override
        public b82 T0(sm9 sm9Var) {
            if (sm9Var == null) {
                U0(2);
            }
            throw new IllegalStateException(this.c);
        }

        @Override
        public a S0(kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
            if (cVar == null) {
                U0(3);
            }
            return this;
        }

        @Override
        public String toString() {
            String str = this.c;
            if (str == null) {
                U0(1);
            }
            return str;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0035  */
    /* JADX WARN: Code duplicated, block: B:75:0x0105  */
    /* JADX WARN: Code duplicated, block: B:82:0x011c  */
    public static void a(int i) {
        String str;
        int i2;
        if (i != 4 && i != 9 && i != 11 && i != 15 && i != 17 && i != 19 && i != 26 && i != 35 && i != 48 && i != 53 && i != 6 && i != 7) {
            switch (i) {
                case 56:
                case 57:
                case 58:
                case 59:
                    str = "@NotNull method %s.%s must not return null";
                    break;
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i != 4 && i != 9 && i != 11 && i != 15 && i != 17 && i != 19 && i != 26 && i != 35 && i != 48 && i != 53 && i != 6 && i != 7) {
            switch (i) {
                case 56:
                case 57:
                case 58:
                case 59:
                    i2 = 2;
                    break;
                default:
                    i2 = 3;
                    break;
            }
        } else {
            i2 = 2;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 4:
            case 6:
            case 7:
            case 9:
            case 11:
            case 15:
            case 17:
            case 19:
            case 26:
            case 35:
            case 48:
            case 53:
            case 56:
            case 57:
            case 58:
            case 59:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeUtils";
                break;
            case 5:
            case 8:
            case 10:
            case 18:
            case 23:
            case 25:
            case 27:
            case 28:
            case 29:
            case 30:
            case 38:
            case 40:
            default:
                objArr[0] = "type";
                break;
            case 12:
                objArr[0] = "typeConstructor";
                break;
            case 13:
                objArr[0] = "unsubstitutedMemberScope";
                break;
            case 14:
                objArr[0] = "refinedTypeFactory";
                break;
            case 16:
                objArr[0] = "parameters";
                break;
            case 20:
                objArr[0] = "subType";
                break;
            case 21:
                objArr[0] = "superType";
                break;
            case 22:
                objArr[0] = "substitutor";
                break;
            case 24:
                objArr[0] = "result";
                break;
            case 31:
            case 33:
                objArr[0] = "clazz";
                break;
            case 32:
                objArr[0] = "typeArguments";
                break;
            case 34:
                objArr[0] = "projections";
                break;
            case 36:
                objArr[0] = CmcdData.OBJECT_TYPE_AUDIO_ONLY;
                break;
            case 37:
                objArr[0] = "b";
                break;
            case 39:
                objArr[0] = "typeParameters";
                break;
            case 41:
                objArr[0] = "typeParameterConstructors";
                break;
            case 42:
                objArr[0] = "specialType";
                break;
            case 43:
            case 44:
                objArr[0] = "isSpecialType";
                break;
            case 45:
            case 46:
                objArr[0] = "parameterDescriptor";
                break;
            case 47:
            case 51:
                objArr[0] = "numberValueTypeConstructor";
                break;
            case 49:
            case 50:
                objArr[0] = "supertypes";
                break;
            case 52:
            case 55:
                objArr[0] = "expectedType";
                break;
            case 54:
                objArr[0] = "literalTypeConstructor";
                break;
        }
        if (i == 4) {
            objArr[1] = "makeNullableAsSpecified";
        } else if (i == 9) {
            objArr[1] = "makeNullableIfNeeded";
        } else if (i == 11 || i == 15) {
            objArr[1] = "makeUnsubstitutedType";
        } else if (i == 17) {
            objArr[1] = "getDefaultTypeProjections";
        } else if (i == 19) {
            objArr[1] = "getImmediateSupertypes";
        } else if (i == 26) {
            objArr[1] = "getAllSupertypes";
        } else if (i == 35) {
            objArr[1] = "substituteProjectionsForParameters";
        } else if (i == 48) {
            objArr[1] = "getDefaultPrimitiveNumberType";
        } else if (i != 53) {
            if (i != 6 && i != 7) {
                switch (i) {
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                        objArr[1] = "getPrimitiveNumberType";
                        break;
                    default:
                        objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeUtils";
                        break;
                }
            } else {
                objArr[1] = "makeNullableIfNeeded";
            }
        } else {
            objArr[1] = "getPrimitiveNumberType";
        }
        switch (i) {
            case 1:
                objArr[2] = "makeNullable";
                break;
            case 2:
                objArr[2] = "makeNotNullable";
                break;
            case 3:
                objArr[2] = "makeNullableAsSpecified";
                break;
            case 4:
            case 6:
            case 7:
            case 9:
            case 11:
            case 15:
            case 17:
            case 19:
            case 26:
            case 35:
            case 48:
            case 53:
            case 56:
            case 57:
            case 58:
            case 59:
                break;
            case 5:
            case 8:
                objArr[2] = "makeNullableIfNeeded";
                break;
            case 10:
                objArr[2] = "canHaveSubtypes";
                break;
            case 12:
            case 13:
            case 14:
                objArr[2] = "makeUnsubstitutedType";
                break;
            case 16:
                objArr[2] = "getDefaultTypeProjections";
                break;
            case 18:
                objArr[2] = "getImmediateSupertypes";
                break;
            case 20:
            case 21:
            case 22:
                objArr[2] = "createSubstitutedSupertype";
                break;
            case 23:
            case 24:
                objArr[2] = "collectAllSupertypes";
                break;
            case 25:
                objArr[2] = "getAllSupertypes";
                break;
            case 27:
                objArr[2] = "isNullableType";
                break;
            case 28:
                objArr[2] = "acceptsNullable";
                break;
            case 29:
                objArr[2] = "hasNullableSuperType";
                break;
            case 30:
                objArr[2] = "getClassDescriptor";
                break;
            case 31:
            case 32:
                objArr[2] = "substituteParameters";
                break;
            case 33:
            case 34:
                objArr[2] = "substituteProjectionsForParameters";
                break;
            case 36:
            case 37:
                objArr[2] = "equalTypes";
                break;
            case 38:
            case 39:
                objArr[2] = "dependsOnTypeParameters";
                break;
            case 40:
            case 41:
                objArr[2] = "dependsOnTypeConstructors";
                break;
            case 42:
            case 43:
            case 44:
                objArr[2] = "contains";
                break;
            case 45:
            case 46:
                objArr[2] = "makeStarProjection";
                break;
            case 47:
            case 49:
                objArr[2] = "getDefaultPrimitiveNumberType";
                break;
            case 50:
                objArr[2] = "findByFqName";
                break;
            case 51:
            case 52:
            case 54:
            case 55:
                objArr[2] = "getPrimitiveNumberType";
                break;
            case 60:
                objArr[2] = "isTypeParameter";
                break;
            case 61:
                objArr[2] = "isReifiedTypeParameter";
                break;
            case 62:
                objArr[2] = "isNonReifiedTypeParameter";
                break;
            case 63:
                objArr[2] = "getTypeParameterDescriptorOrNull";
                break;
            default:
                objArr[2] = "noExpectedType";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 4 && i != 9 && i != 11 && i != 15 && i != 17 && i != 19 && i != 26 && i != 35 && i != 48 && i != 53 && i != 6 && i != 7) {
            switch (i) {
                case 56:
                case 57:
                case 58:
                case 59:
                    break;
                default:
                    throw new IllegalArgumentException(str2);
            }
        }
        throw new IllegalStateException(str2);
    }

    public static boolean b(eh5 eh5Var) {
        if (eh5Var == null) {
            a(28);
        }
        if (eh5Var.J0()) {
            return true;
        }
        return ky3.b(eh5Var) && b(ky3.a(eh5Var).R0());
    }

    public static boolean c(eh5 eh5Var, e74 e74Var) {
        if (e74Var == null) {
            a(43);
        }
        return d(eh5Var, e74Var, null);
    }

    public static boolean d(eh5 eh5Var, e74 e74Var, cq9 cq9Var) {
        if (e74Var == null) {
            a(44);
        }
        if (eh5Var == null) {
            return false;
        }
        mgb mgbVarL0 = eh5Var.L0();
        if (w(eh5Var)) {
            return ((Boolean) e74Var.invoke(mgbVarL0)).booleanValue();
        }
        if (cq9Var != null && cq9Var.contains(eh5Var)) {
            return false;
        }
        if (((Boolean) e74Var.invoke(mgbVarL0)).booleanValue()) {
            return true;
        }
        if (cq9Var == null) {
            cq9Var = cq9.b();
        }
        cq9Var.add(eh5Var);
        fy3 fy3Var = mgbVarL0 instanceof fy3 ? (fy3) mgbVarL0 : null;
        if (fy3Var != null && (d(fy3Var.Q0(), e74Var, cq9Var) || d(fy3Var.R0(), e74Var, cq9Var))) {
            return true;
        }
        if ((mgbVarL0 instanceof g72) && d(((g72) mgbVarL0).U0(), e74Var, cq9Var)) {
            return true;
        }
        sbb sbbVarI0 = eh5Var.I0();
        if (sbbVarI0 instanceof IntersectionTypeConstructor) {
            Iterator it = ((IntersectionTypeConstructor) sbbVarI0).k().iterator();
            while (it.hasNext()) {
                if (d((eh5) it.next(), e74Var, cq9Var)) {
                    return true;
                }
            }
            return false;
        }
        for (mcb mcbVar : eh5Var.G0()) {
            if (!mcbVar.b() && d(mcbVar.getType(), e74Var, cq9Var)) {
                return true;
            }
        }
        return false;
    }

    public static eh5 e(eh5 eh5Var, eh5 eh5Var2, TypeSubstitutor typeSubstitutor) {
        if (eh5Var == null) {
            a(20);
        }
        if (eh5Var2 == null) {
            a(21);
        }
        if (typeSubstitutor == null) {
            a(22);
        }
        eh5 eh5VarP = typeSubstitutor.p(eh5Var2, Variance.INVARIANT);
        if (eh5VarP != null) {
            return q(eh5VarP, eh5Var.J0());
        }
        return null;
    }

    public static qw0 f(eh5 eh5Var) {
        if (eh5Var == null) {
            a(30);
        }
        px0 px0VarC = eh5Var.I0().c();
        if (px0VarC instanceof qw0) {
            return (qw0) px0VarC;
        }
        return null;
    }

    public static List g(List list) {
        if (list == null) {
            a(16);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new ocb(((hcb) it.next()).q()));
        }
        List listB1 = i81.b1(arrayList);
        if (listB1 == null) {
            a(17);
        }
        return listB1;
    }

    public static List h(eh5 eh5Var) {
        if (eh5Var == null) {
            a(18);
        }
        TypeSubstitutor typeSubstitutorF = TypeSubstitutor.f(eh5Var);
        Collection collectionK = eh5Var.I0().k();
        ArrayList arrayList = new ArrayList(collectionK.size());
        Iterator it = collectionK.iterator();
        while (it.hasNext()) {
            eh5 eh5VarE = e(eh5Var, (eh5) it.next(), typeSubstitutorF);
            if (eh5VarE != null) {
                arrayList.add(eh5VarE);
            }
        }
        return arrayList;
    }

    public static hcb i(eh5 eh5Var) {
        if (eh5Var == null) {
            a(63);
        }
        if (eh5Var.I0().c() instanceof hcb) {
            return (hcb) eh5Var.I0().c();
        }
        return null;
    }

    public static boolean j(eh5 eh5Var) {
        if (eh5Var == null) {
            a(29);
        }
        if (eh5Var.I0().c() instanceof qw0) {
            return false;
        }
        Iterator it = h(eh5Var).iterator();
        while (it.hasNext()) {
            if (l((eh5) it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean k(eh5 eh5Var) {
        return eh5Var != null && eh5Var.I0() == a.I0();
    }

    public static boolean l(eh5 eh5Var) {
        if (eh5Var == null) {
            a(27);
        }
        if (eh5Var.J0()) {
            return true;
        }
        if (ky3.b(eh5Var) && l(ky3.a(eh5Var).R0())) {
            return true;
        }
        if (tu9.c(eh5Var)) {
            return false;
        }
        if (m(eh5Var)) {
            return j(eh5Var);
        }
        sbb sbbVarI0 = eh5Var.I0();
        if (sbbVarI0 instanceof IntersectionTypeConstructor) {
            Iterator it = sbbVarI0.k().iterator();
            while (it.hasNext()) {
                if (l((eh5) it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean m(eh5 eh5Var) {
        if (eh5Var == null) {
            a(60);
        }
        if (i(eh5Var) != null) {
            return true;
        }
        eh5Var.I0();
        return false;
    }

    public static eh5 n(eh5 eh5Var) {
        if (eh5Var == null) {
            a(2);
        }
        return p(eh5Var, false);
    }

    public static eh5 o(eh5 eh5Var) {
        if (eh5Var == null) {
            a(1);
        }
        return p(eh5Var, true);
    }

    public static eh5 p(eh5 eh5Var, boolean z) {
        if (eh5Var == null) {
            a(3);
        }
        mgb mgbVarM0 = eh5Var.L0().M0(z);
        if (mgbVarM0 == null) {
            a(4);
        }
        return mgbVarM0;
    }

    public static eh5 q(eh5 eh5Var, boolean z) {
        if (eh5Var == null) {
            a(8);
        }
        if (z) {
            return o(eh5Var);
        }
        if (eh5Var == null) {
            a(9);
        }
        return eh5Var;
    }

    public static sm9 r(sm9 sm9Var, boolean z) {
        if (sm9Var == null) {
            a(5);
        }
        if (!z) {
            if (sm9Var == null) {
                a(7);
            }
            return sm9Var;
        }
        sm9 sm9VarM0 = sm9Var.M0(true);
        if (sm9VarM0 == null) {
            a(6);
        }
        return sm9VarM0;
    }

    public static mcb s(hcb hcbVar) {
        if (hcbVar == null) {
            a(45);
        }
        return new StarProjectionImpl(hcbVar);
    }

    public static mcb t(hcb hcbVar, pc3 pc3Var) {
        if (hcbVar == null) {
            a(46);
        }
        return pc3Var.b() == TypeUsage.SUPERTYPE ? new ocb(gw9.b(hcbVar)) : new StarProjectionImpl(hcbVar);
    }

    public static sm9 u(px0 px0Var, MemberScope memberScope, e74 e74Var) {
        if (!id3.m(px0Var)) {
            return v(px0Var.m(), memberScope, e74Var);
        }
        gd3 gd3VarD = id3.d(ErrorTypeKind.UNABLE_TO_SUBSTITUTE_TYPE, px0Var.toString());
        if (gd3VarD == null) {
            a(11);
        }
        return gd3VarD;
    }

    public static sm9 v(sbb sbbVar, MemberScope memberScope, e74 e74Var) {
        if (sbbVar == null) {
            a(12);
        }
        if (memberScope == null) {
            a(13);
        }
        if (e74Var == null) {
            a(14);
        }
        sm9 sm9VarL = KotlinTypeFactory.l(j.c.h(), sbbVar, g(sbbVar.getParameters()), false, memberScope, e74Var);
        if (sm9VarL == null) {
            a(15);
        }
        return sm9VarL;
    }

    public static boolean w(eh5 eh5Var) {
        if (eh5Var == null) {
            a(0);
        }
        return eh5Var == c || eh5Var == d;
    }
}
